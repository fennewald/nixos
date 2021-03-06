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
      primary.background = "0x1c1e26";
      primary.foreground = "0xe0e0e0";
      normal = {
        black   = "0x16161c";
        red     = "0xe95678";
        green   = "0x29d398";
        yellow  = "0xfab795";
        blue    = "0x26bbd9";
        magenta = "0xee64ac";
        cyan    = "0x59e1e3";
        white   = "0xd5d8da";
      };
      bright = {
        black   = "0x5b5858";
        red     = "0xec6a88";
        green   = "0x3fdaa4";
        yellow  = "0xfbc3a7";
        blue    = "0x3fc4de";
        magenta = "0xf075b5";
        cyan    = "0x6be4e6";
        white   = "0xd5d8da";
      };
    };
  };
}
