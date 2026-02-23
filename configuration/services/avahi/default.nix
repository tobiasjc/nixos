{ config, pkgs, ... }:
{
  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;

    publish = {
      enable = true;
      hinfo = true;
      addresses = true;
      domain = true;
    };
  };
}
