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

  environment.systemPackages = with pkgs.xfce; [
    xfce4-pulseaudio-plugin
    xfce4-systemload-plugin
    xfce4-cpugraph-plugin
    xfce4-netload-plugin
  ];
}
