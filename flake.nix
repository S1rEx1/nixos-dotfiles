{
  description = "NixOS btw";
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-26.05";
    home-manager = {
        url = "github:nix-community/home-manager/release-26.05";
        inputs.nixpkgs.follows = "nixpkgs";
      };

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: {
    nixosConfigurations.nixos-btw = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration.nix

        home-manager.nixosModules.home-manager
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            users.sirex = import ./home.nix;
            backupFileExtension = "backup";
            extraSpecialArgs = {
              inherit inputs;
            };
          };
        }
      ];
    };
  };
}

