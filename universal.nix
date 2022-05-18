{ config, lib, pkgs, inputs, user, homepath, ... }:

{
  time.timeZone = "America/New_York";
  i18n.defaultLocale = "en_US.UTF-8";

  users.users.${user} = {
    isNormalUser = true;
    home = "${homepath}";
    extraGroups = [ "wheel" ];
  };

  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
  };

  environment = {
    variables = {
      TERMINAL = "alacritty";
      EDITOR = "kak";
      VISUAL = "kak";
      PAGER = "kak";
    };
  };

  fonts.fonts = with pkgs; [
    dina-font
    fira-code
    fira-code-symbols
    iosevka
    julia-mono
    liberation_ttf
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    proggyfonts
  ];

  nix = {
    settings.auto-optimise-store = true;
    package = pkgs.nixFlakes;
    extraOptions = "experimental-features = nix-command flakes";
  };

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "21.11";
}
