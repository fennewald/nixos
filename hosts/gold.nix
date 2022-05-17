{ config, pkgs, expr, ... }:
{
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
}
