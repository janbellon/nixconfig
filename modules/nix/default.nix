# Module Nix - Configuration Nix et Flakes
{ config, lib, pkgs, ... }:

{
  # Activer les fonctionnalités expérimentales
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Autoriser les paquets non-libres
  nixpkgs.config.allowUnfree = true;

  # nix-ld pour les programmes non-NixOS
  programs.nix-ld.enable = true;
}
