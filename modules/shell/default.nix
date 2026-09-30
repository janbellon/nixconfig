# Module Shell - Configuration Zsh et Oh-My-Zsh
{ config, lib, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;

    ohMyZsh = {
      enable = true;
      theme = "agnoster";
      plugins = [ "git" ];
    };

    shellAliases = {
      nixconf-update = "sudo nixos-rebuild switch --flake /home/jan/nixconfig#jpc-4207";
    };
  };
}
