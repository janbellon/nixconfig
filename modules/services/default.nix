# Module Services - Services système
{ config, lib, pkgs, ... }:

{
  # Impression
  services.printing.enable = true;

  # Tailscale VPN
  services.tailscale = {
    enable = true;
    useRoutingFeatures = "client";
  };

  # OpenVPN
  services.openvpn.servers = {
    fr1 = {
      config = "config /home/jan/.config/ovpn/fr1.ovpn";
      autoStart = false;
    };
  };
}
