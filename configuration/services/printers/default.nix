{ config, pkgs, ... }:
{
  services.system-config-printer.enable = true;
  # Enable CUPS to print documents.
  services.printing = {
    enable = true;
    drivers = with pkgs; [
      epson-escpr
      epson-escpr2
    ];
  };
}
