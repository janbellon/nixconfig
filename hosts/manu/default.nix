# Configuration Host - JPC-4207
{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    # Hardware spécifique à cette machine
    ./hardware-configuration.nix

    # Modules thématiques
    ../../modules/boot
    ../../modules/networking
    ../../modules/desktop
    ../../modules/users
    ../../modules/packages
    ../../modules/services
    ../../modules/shell
    ../../modules/locale
    ../../modules/nix
  ];

  # Nom de la machine
  networking.hostName = "Manu";

  # Version de NixOS (ne pas changer sans migration)
  system.stateVersion = "24.11";
}
