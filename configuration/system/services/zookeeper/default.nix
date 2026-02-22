{ config, pkgs, ... }:
{
  services.zookeeper = {
    enable = true;
  };
}
