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
      primary.background = "0x1c1c1c";
      primary.foreground = "0xdfdfaf";
      normal = {
        black   = "0x262626";
        red     = "0xaf5f5f";
        green   = "0x87875f";
        yellow  = "0xaf875f";
        blue    = "0x87afaf";
        magenta = "0xaf8787";
        cyan    = "0x57875f";
        white   = "0xdfdfaf";
      };
      bright = {
        black   = "0x878787";
        red     = "0xaf5f5f";
        green   = "0x87875f";
        yellow  = "0xaf875f";
        blue    = "0x87afaf";
        magenta = "0xaf8787";
        cyan    = "0x57875f";
        white   = "0xdfdfaf";
      };
    };
  };
}
