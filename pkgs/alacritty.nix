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
      normal.family = "FiraCode";
      normal.style = "Medium";
      bold.family = "FiraCode";
      bold.style = "Bold";
      italic.family = "FiraCode";
      italic.style = "Italic";
      bold_italic.family = "FiraCode";
      bold_italic.style = "Bold Italic";
    };

    colors = {
      primary.background = "0xfdf6e3";
      primary.foreground = "0x586e75";
    normal = {
        black   = "0x073642";
        red     = "0xdc322f";
        green   = "0x859900";
        yellow  = "0xb58900";
        blue    = "0x268bd2";
        magenta = "0xd33682";
        cyan    = "0x2aa198";
        white   = "0xeee8d5";
    };
    bright = {
        black   = "0x002b36";
        red     = "0xcb4b16";
        green   = "0x586e75";
        yellow  = "0x657b83";
        blue    = "0x839496";
        magenta = "0x6c71c4";
        cyan    = "0x93a1a1";
        white   = "0xfdf6e3";
    };
    };
  };
}
