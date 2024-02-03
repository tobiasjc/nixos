{ config, pkgs, ... }: {
  services.xserver = {
    displayManager.lightdm = {
      enable = true;
    };

    desktopManager.xfce = {
      enable = true;
    };
  };

  programs.thunar = {
    enable = true;
    plugins = with pkgs.xfce; [
      thunar-archive-plugin
      thunar-volman
    ];
  };
}
