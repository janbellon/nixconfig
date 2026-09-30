# Module Networking - Configuration réseau
{ config, lib, pkgs, ... }:

{
  networking = {
    networkmanager.enable = true;

    # Configuration DNS avec dnsmasq
    networkmanager.dns = "dnsmasq";
    networkmanager.extraConfig = ''
      [main]
      dns=dnsmasq
    '';

    networkmanager.dnsmasq.enable = true;
    networkmanager.dnsmasq.settings = {
      # DNS par domaine
      server = [
        "/vil.nbl.sh/10.2.1.1"
        "/int.enpos.fr/10.0.1.1"
        "/ops.enpos.fr/10.0.1.1"
        "45.90.160.57"
      ];
    };
  };
}
