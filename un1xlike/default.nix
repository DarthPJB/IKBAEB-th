let
  symbolsDir = ./xkb/symbols;

  symbolsFiles = builtins.attrNames (builtins.readDir symbolsDir);

  mkSymbol = symbol: {
    name = symbol;
    value = {
      symbolsFile = "${symbolsDir}/${symbol}";
    };
  };

  mkLayout = symbol: {
    name = symbol;
    value = {
      description = "Ikbaeb Thai layout version ${symbol}";
      languages = [ "tha" ];
      symbolsFile = "${symbolsDir}/${symbol}";
    };
  };

  ikbaeb-th = builtins.listToAttrs (builtins.map mkSymbol symbolsFiles);
  layouts = builtins.listToAttrs (builtins.map mkLayout symbolsFiles);
in
{
  inherit layouts ikbaeb-th;
}
