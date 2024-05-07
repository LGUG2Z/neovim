{
  description = "JeezyVim";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts";
    devenv.url = "github:cachix/devenv";
  };

  outputs = {
    self,
    nixpkgs,
    nixvim,
    flake-parts,
    ...
  } @ inputs: let
    mkPkgs = system:
      import nixpkgs {
        inherit system;
        config = {
          allowUnfree = true;
        };
      };
  in
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      imports = [
        inputs.devenv.flakeModule
        inputs.flake-parts.flakeModules.easyOverlay
      ];

      perSystem = {
        system,
        config,
        ...
      }: let
        pkgs =
          mkPkgs system;
        nixvimLib = nixvim.lib.${system};
        nixvim' = nixvim.legacyPackages.${system};
        jeezyvim = nixvim'.makeNixvimWithModule {
          inherit pkgs;
          module = import ./config;
          # You can use `extraSpecialArgs` to pass additional arguments to your module files
          extraSpecialArgs = {
            inherit self;
            # inherit (inputs) foo;
          };
        };
      in {
        checks = {
          # Run `nix flake check .` to verify that your config is not broken
          default = nixvimLib.check.mkTestDerivationFromNvim {
            nvim = jeezyvim;
            name = "JeezyVim";
          };
        };

        packages.default = jeezyvim;
        packages.jeezyvim = jeezyvim;

        overlayAttrs = {
          inherit (config.packages) jeezyvim;
        };

        devenv.shells.default = {
          name = "JeezyVim";

          packages = with pkgs; [
            just
          ];

          pre-commit.hooks = {
            markdownlint.enable = true;
            alejandra.enable = true;
            prettier.enable = true;
          };
        };
      };
    };
}
