{ config, pkgs, ... }: {
  imports = [
    ./flatpak
    ./httpd
    ./kafka
  ];
}
