# Module Networking - Configuration réseau
{ config, lib, pkgs, ... }:

{
  networking.networkmanager = {
    enable = true;
    # NetworkManager lance sa propre instance de dnsmasq
    dns = "dnsmasq";
  };

  # Règles dnsmasq lues par l'instance de NetworkManager
  environment.etc."NetworkManager/dnsmasq.d/custom.conf".text = ''
    # DNS par domaine
    server=/vil.nbl.sh/10.2.1.1
    server=/int.enpos.fr/10.0.1.1
    server=/ops.enpos.fr/10.0.1.1

    # Serveur amont par défaut
    server=45.90.160.57
  '';
}
