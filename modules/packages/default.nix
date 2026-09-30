# Module Packages - Paquets système
{ config, lib, pkgs, ... }:

{
  # Paquets système
  environment.systemPackages = with pkgs; [
    # Éditeurs et outils de base
    vim
    wget
    git
    unzip

    # Monitoring et réseau
    iperf3
    neofetch
    pciutils

    # Terminal et shell
    zellij
    alacritty

    # Développement
    python3
    gcc
    openssl

    # Applications
    vscode
    thunderbird
    libreoffice
    claude-code
  ];

  # Firefox
  programs.firefox.enable = true;
}
