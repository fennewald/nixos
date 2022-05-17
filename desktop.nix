{ config, pkgs, ... }:

{
  programs.sway = {
    enable = true;
    extraPackages = with pkgs; [
      swaylock
      swayidle
      xwayland
      waybar
      mako
      kanshi
      bemenu
      alacritty
    ];
  };

  systemd.user.targets.sway-session = {
    description = "Sway compositor session";
    documentation = [ "man:systemd.special(7)" ];
    bindsTo = [ "graphical-session.target" ];
    wants = [ "graphical-session-pre.target" ];
    after= [ "graphical-session-pre.target" ];
  };

  programs.steam = {
      enable = true;
      remotePlay.openFirewall = false;
      dedicatedServer.openFirewall = false;
  };

  environment = {
    loginShellInit = ''
      if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
        exec sway
      fi
    '';
    etc = {
        "sway/config".source = ./conf/sway/config;
        "per-user/alacritty/alacritty.yml".source = ./conf/alacritty/alacritty.yml;
    };
  };
}

