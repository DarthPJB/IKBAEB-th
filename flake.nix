{
  description = "Ikbaeb Thai layout";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.05";
  };

  outputs = { self, nixpkgs }@inputs:
    let
      name = "ikbaeb-th";

      xkbSymbols = [ "ikbatha0" "ikbatha1" ];

      supportedSystems = nixpkgs.lib.platforms.unix;

      forAllSystems = f: nixpkgs.lib.genAttrs supportedSystems (system: f system);

      nixpkgsFor = forAllSystems (system: import nixpkgs {
        inherit system;
        config = { };
        overlays = [ ];
      });
    in
    {
      # How to use easily:
      #
      # {
      #   services.xserver.extraLayouts = inputs.ikbaeb-th.extraLayouts ${pkgs.system};
      # }
      #
      # TIP: using `specialArgs` in a `nixosConfiguration` or `extraSpecialArgs`
      # with `home-manager` + `{ inherit inputs; }` is a quick way to pass one’s
      # Flake @inputs to imported files.
      extraLayouts = system:
        let
          xkbLayoutNew = symbol: {
            name = symbol;
            value = {
              description = "Ikbaeb Thai layout version ${symbol}";
              languages = [ "tha" ];
              symbolsFile = "${self.packages.${system}.${name}}/xkb/symbols/${symbol}";
            };
          };
        in
        builtins.listToAttrs (builtins.map xkbLayoutNew xkbSymbols);

      packages = forAllSystems (system:
        let pkgs = nixpkgsFor.${system}; in {
          default = self.packages.${system}.${name};

          ${name} = pkgs.runCommand "${name}-xkb-layouts"
            {
              src = ./un1xlike;
            }
            ''
              mkdir -p $out/xkb
              cp -r $src/xkb/symbols $out/xkb/
            '';
        });
    };
}
