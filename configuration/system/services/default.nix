{ config, pkgs, ... }: {
  imports = [
    ./avahi
    ./cron
    ./databases
    ./httpd
    ./kafka
    ./postgresql
    ./printing
    ./spark
  ];
}
