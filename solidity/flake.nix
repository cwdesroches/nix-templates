{
  description = "Solidity template nix flake.";

  inputs.nixpkgs.url = "nixpkgs/nixos-21.11";
  inputs.utils.url = github:numtide/flake-utils;
  inputs.foundry.url = github:shazow/foundry.nix;

  outputs = { self, nixpkgs, utils, foundry }:

    utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
        {
          devShell = with pkgs;
            mkShell {
              buildInputs = [

                # Project Deps
                yarn
                solc
                go-ethereum
                foundry.defaultPackage.${system}

                # Project Utils
                treefmt
                nixpkgs-fmt
                
              ];
            };
        }
    );
  
}
