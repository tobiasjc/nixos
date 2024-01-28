{ config, pkgs, ... }: {
  imports = [
    ./avahi
    ./cron
    ./flatpak
    ./httpd
    ./kafka
    ./postgresql
    ./printing
    ./spark
  ];
}
