{ config, pkgs, ... }: {
  imports = [
    ./avahi
    ./cron
    ./databases
    ./httpd
    ./messages
    ./postgresql
    ./printing
    ./spark
  ];
}
