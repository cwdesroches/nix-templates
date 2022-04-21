{
  description = "ClojureScript Nix flake template.";

  inputs.nixpkgs.url = "nixpkgs/nixos-21.11";
  
  inputs.utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, utils }:
    
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
                clojure
                jdk17_headless

                # Project Utils
                treefmt
                nixpkgs-fmt
                
              ];
            };
        }
    );
}
