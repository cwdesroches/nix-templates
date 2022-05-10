{
  description = "cwdesroches flake templates";

  inputs = {
    nixos-templates.url = github:NixOS/templates;
  };

  outputs = { self, nixos-templates }: {

    templates = {
      cljs = {
        path = ./cljs;
        description = "A ClojureScript template project.";
      };
      solidity = {
        path = ./solidity;
        description = "A Solidity template project.";
      };
    };
    
  };
}
