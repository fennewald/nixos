{ nixosConfig, ... }:
let
  common = import ./common.nix;
  solarized = common.colorschemes.solarized;

  colorschemes = {
    # https://github.com/alacritty/alacritty/wiki/Color-schemes#solarized
    solarized-dark = {
      # Default colors
      primary = {
        background = solarized.base03;
        foreground = solarized.base0;
      };

      # Cursor colors
      cursor = {
        text = solarized.base03;
        cursor = solarized.base0;
      };

      # Normal colors
      normal = {
        black = solarized.base02;
        red = solarized.red;
        green = solarized.green;
        yellow = solarized.yellow;
        blue = solarized.blue;
        magenta = solarized.magenta;
        cyan = solarized.cyan;
        white = solarized.base2;
      };

      # Bright colors
      bright = {
        black = solarized.base03;
        red = solarized.orange;
        green = solarized.base01;
        yellow = solarized.base00;
        blue = solarized.base0;
        magenta = solarized.violet;
        cyan = solarized.base1;
        white = solarized.base3;
      };
    };
  };
in
{
  programs.alacritty = {
    enable = nixosConfig.sbruder.gui.enable;
    settings = {
      font = {
        normal = {
          family = "Iosevka Nerd Font";
          style = "Regular";
        };
        size = 13.5;
      };

      mouse.hide_when_typing = true;

      key_bindings = [
        {
          key = "V";
          mods = "Control|Alt";
          action = "Paste";
        }
        {
          key = "C";
          mods = "Control|Alt";
          action = "Copy";
        }
      ];

      bell.duration = 100;

      colors = colorschemes.solarized-dark;
    };
  };
}
