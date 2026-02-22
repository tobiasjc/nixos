{ config, pkgs, ... }:
{
  services.zookeeper = {
    enable = true;
    port = 2181;

    extraConf = ''
      admin.serverPort=9191
    '';
  };
}
