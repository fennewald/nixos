{ config, lib, pkgs, user, home-manager, system, murder, ... }:
let
  programs = {
    alacritty = import ./pkgs/alacritty.nix;
    git = import ./pkgs/git.nix;
    starship = import ./pkgs/starship.nix;
    home-manager = { enable = true; };
  };
  #custom_overlay = import ./overlay.nix
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

      #pkgs.overlays = [custom_overlay];

      packages = with pkgs; [
        rustc
        rust-analyzer
        cargo
        gcc
        alacritty
        kakoune
        chromium
        firefox
        kalker
        kak-lsp
        ripgrep
        htop
        btop
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
        teleport
        murder.packages.x86_64-linux.murder
        zig
      ];
    };

    programs = programs;
  }
