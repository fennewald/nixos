{ config, pkgs, ... }:


let
  unstableTarball =
  fetchTarball
    https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz;
in
{
  imports =
  [
    ./hardware-configuration.nix
    ./system.nix
    ./desktop.nix
    ./hosts/gold.nix
  ];

  #############################################################################
  # Environment
  #############################################################################
  environment = {
    systemPackages = with pkgs; [
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
      git
      pulsemixer
      unstable.nushell
    ];
  };
    fonts.fonts = with pkgs; [
      noto-fonts
      noto-fonts-cjk
      noto-fonts-emoji
      liberation_ttf
      fira-code
      fira-code-symbols
      mplus-outline-fonts
      dina-font
      iosevka
      proggyfonts
    ];

  nixpkgs.config = {
    allowUnfree = true;
    packageOverrides = pkgs: {
      unstable = import unstableTarball {
        config = config.nixpkgs.config;
      };
    };
  };
  nix = {
  package = pkgs.nixFlakes;
  extraOptions = ''
    experimental-features = nix-command flakes
  '';
  };

  system.stateVersion = "21.11";
}

