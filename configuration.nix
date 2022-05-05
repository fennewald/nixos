{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  #############################################################################
  # Booting
  #############################################################################
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  networking = {
    hostName = "gold";
    wireless.enable = false;
    useDHCP = false;
    defaultGateway = "192.168.1.2";
    nameservers = [ "192.168.1.2" ];

    interfaces.enp2s0.useDHCP = false;
    interfaces.enp2s0.ipv4.addresses = [{
      address = "192.168.1.4";
      prefixLength = 24;
    }];

    # Firewall settings
    # Currently untouched
    # firewall.allowedTCPPorts = [ ... ];
    # firewall.allowedUDPPorts = [ ... ];
    # firewall.enable = false;
  };

  #############################################################################
  # Locale / timezone
  #############################################################################
  time.timeZone = "America/New_York";
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
  };

  #############################################################################
  # Sound
  #############################################################################
  hardware.bluetooth.enable = true;
  security.rtkit.enable = true;
  services.pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
  };
  # hardware.pulseaudio.enable = true;

  #############################################################################
  # User setup
  #############################################################################
  users.users.carson = {
    home = "/home/c";
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };

  #############################################################################
  # Desktop
  #############################################################################
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

  #############################################################################
  # Environment
  #############################################################################
  environment = {
    loginShellInit = ''
      if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
        exec sway
      fi
    '';
    etc = {
      "sway/config".source = ./dotfiles/sway/config;
      "alacritty/alacritty.yml".source = ./dotfiles/alacritty/config.yml;
    };
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
    ];
  };

  nixpkgs.config.allowUnfree = true;
  nix = {
    package = pkgs.nixFlakes;
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
  };

  system.stateVersion = "21.11";
}

