{
  description = "custom system configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    murder.url = "github:fennewald/murder";
  };

  outputs = { self, nixpkgs, home-manager, murder, ... }:
    let
      user = "carson";
      homepath = "/home/c/";
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      lib = nixpkgs.lib;
    in {
      nixosConfigurations.omega = lib.nixosSystem {
        inherit system;
        specialArgs = { inherit user homepath home-manager; };
        modules = [
          ./hosts/omega
          ./universal.nix
          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = { inherit user pkgs homepath home-manager murder; };
            home-manager.users.${user} = {
              imports = [(import ./home.nix)];
            };
          }
        ];
      };
    };
}
