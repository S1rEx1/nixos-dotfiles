{
  description = "NixOS btw";
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-26.05";
    serpantinum.url = "github:ilyamiro/serpantinum";
    home-manager = {
        url = "github:nix-community/home-manager/release-26.05";
        inputs.nixpkgs.follows = "nixpkgs";
      };

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
    };
  };

  outputs = { self, nixpkgs, home-manager, serpantinum, ... }@inputs: {
    nixosConfigurations.nixos-btw = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit serpantinum; };
      modules = [
        ./configuration.nix
        serpantinum.nixosModules.default

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

