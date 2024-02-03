{ config, pkgs, ... }: {
  imports = [
    ./avahi
    ./cron
    ./httpd
    ./kafka
    ./postgresql
    ./printing
    ./spark
  ];
}
