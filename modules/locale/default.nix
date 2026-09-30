# Module Locale - Paramètres régionaux
{ config, lib, pkgs, ... }:

{
  # Timezone
  time.timeZone = "Europe/Paris";

  # Locale principale
  i18n.defaultLocale = "en_US.UTF-8";

  # Paramètres régionaux français
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "fr_FR.UTF-8";
    LC_IDENTIFICATION = "fr_FR.UTF-8";
    LC_MEASUREMENT = "fr_FR.UTF-8";
    LC_MONETARY = "fr_FR.UTF-8";
    LC_NAME = "fr_FR.UTF-8";
    LC_NUMERIC = "fr_FR.UTF-8";
    LC_PAPER = "fr_FR.UTF-8";
    LC_TELEPHONE = "fr_FR.UTF-8";
    LC_TIME = "fr_FR.UTF-8";
  };

  # Clavier console (AZERTY)
  console.keyMap = "fr";
}
