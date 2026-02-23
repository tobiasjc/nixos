{ config, pkgs, ... }:
{
  services.flatpak = {
    enable = true;
  };

  xdg = {
    portal = {
      enable = true;
      xdgOpenUsePortal = true;

      wlr.enable = true;
    };

    terminal-exec.enable = true;
  };
}
