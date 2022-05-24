{ config, lib, pkgs, user, home-manager, ... }:
let
  programs = {
    alacritty = import ./pkgs/alacritty.nix;
    git = import ./pkgs/git.nix;
    home-manager = { enable = true; };
  };
in
  {

    home = {
      # Raw config files
      file.".config/nushell/env.nu".source = ./conf/nushell/env.nu;
      file.".config/nushell/config.nu".source = ./conf/nushell/config.nu;
      file.".config/sway/config".source = ./conf/sway/config;
      file.".config/sway/config.d/applications".source = ./conf/sway/config.d/applications;
      file.".config/sway/config.d/container".source = ./conf/sway/config.d/container;
      file.".config/sway/config.d/drag-mode".source = ./conf/sway/config.d/drag-mode;
      file.".config/sway/config.d/multi-monitor".source = ./conf/sway/config.d/multi-monitor;
      file.".config/sway/config.d/resize-mode".source = ./conf/sway/config.d/resize-mode;
      file.".config/sway/config.d/theme".source = ./conf/sway/config.d/theme;
      file.".config/sway/config.d/workspace".source = ./conf/sway/config.d/workspace;

      packages = with pkgs; [
        alacritty
        kakoune
        chromium
        firefox
        ripgrep
        htop
        bpytop
        bat
        exa
        procs
        tokei
        hyperfine
        zoxide
        slack
        pulsemixer
        nushell
        ocaml
      ];
    };

    programs = programs;
  }
