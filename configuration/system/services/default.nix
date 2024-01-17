{ config, pkgs, ... }: {
  imports = [
    ./avahi
    ./cron
    ./flatpak
    ./httpd
    # ./kafka
    ./printing
  ];
}
