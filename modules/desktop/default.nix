# Module Desktop - Environnement graphique GNOME
{ config, lib, pkgs, ... }:

{
  # Configuration X11
  services.xserver = {
    enable = true;
    xkb = {
      layout = "fr";
      variant = "";
    };
  };

  # GNOME Desktop Environment
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Audio avec PipeWire
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };
}
