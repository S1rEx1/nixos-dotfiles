{
	description = "NixOS btw";
	nixConfig = {
		extra-substituters = [ "https://noctalia.cachix.org" ];
		extra-trusted-public-keys = [ "noctalia.cachix.org-1:pCOR47nnMEo5thcxNDtzWpOxNFQsBRglJzxWPp3dkU4=" ];
	};
	inputs = {
		nixpkgs.url = "nixpkgs/nixos-26.05";
		nixpkgs-unstable.url = "nixpkgs/nixos-unstable";
		noctalia.url = "github:noctalia-dev/noctalia/cachix";
		stylix.url = "github:danth/stylix/release-26.05";
		home-manager = {
			url = "github:nix-community/home-manager/release-26.05";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		firefox-addons = {
			url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
		};
	};

	outputs = { nixpkgs, home-manager, ... }@inputs: {
		nixosConfigurations.nixos-btw = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			specialArgs = { inherit inputs; };
			modules = [
				./configuration.nix
				inputs.stylix.nixosModules.stylix
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

