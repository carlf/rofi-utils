{
  description = "Rofi helper scripts";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
        rec {
          packages.rofi-gopass = pkgs.writeShellApplication {
            name = "rofi-gopass";
            runtimeInputs = with pkgs; [ gopass xclip ];
            text = builtins.readFile ./rofi-gopass;
          };
          packages.rofi-oath = pkgs.writeShellApplication {
            name = "rofi-oath";
            runtimeInputs = with pkgs; [ yubikey-manager xclip ];
            text = builtins.readFile ./rofi-oath;
          };
        }
    );
}
