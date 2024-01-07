{ config, pkgs, ... }: {
  imports = [
    ./avahi
    ./flatpak
    ./httpd
    ./kafka
    ./printing
  ];
}
