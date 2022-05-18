{
  enable = true;
  settings = {
    window = {
      dynamic_title = true;
      gtk_theme_variant = "dark";
    };

    shell.program = "nu";

    hints.alphabet = "asdfghjkl;";
    cursor = {
      unfocused_hollow = true;
      style.shape = "Block";
      style.blinking = "Off";
    };

    font = {
      size = 10.0;
      normal.family = "JuliaMono";
      normal.style = "Medium";
      bold.family = "JuliaMono";
      bold.style = "Bold";
      italic.family = "JuliaMono";
      italic.style = "Italic";
      bold_italic.family = "JuliaMono";
      bold_italic.style = "Bold Italic";
    };

    colors = {
      primary.foreground = "0x919191";
      primary.background = "0x000000";
      normal = {
        black   = "0x303030";
        red     = "0xa43261";
        green   = "0x006ca5";
        yellow  = "0x007086";
        blue    = "0x6751a6";
        magenta = "0x913e88";
        cyan    = "0x0061b1";
        white   = "0xc6c6c6";
      };
      bright = {
        black   = "0x5e5e5e";
        red     = "0xff9fc9";
        green   = "0x3bd6ff";
        yellow  = "0x00ddf4";
        blue    = "0xd5b8ff";
        magenta = "0xffa7f6";
        cyan    = "0x93c9ff";
        white   = "0xffffff";
      };
    };
  };
}
