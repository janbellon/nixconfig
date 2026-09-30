# Module Users - Gestion des utilisateurs
{ config, lib, pkgs, ... }:

{
  users.users.jan = {
    isNormalUser = true;
    description = "jan";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
      btop
      screen
      ipcalc
      wireshark
    ];
  };
}
