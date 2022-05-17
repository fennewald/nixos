{ config, pkgs, ... }:

{
  #############################################################################
  # Booting
  #############################################################################
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
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
}
