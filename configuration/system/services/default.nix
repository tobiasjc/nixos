{ config, pkgs, ... }: {
  imports = [
    ./avahi
    ./cron
    ./databases
    ./httpd
    ./messages
    ./printers
    ./spark
  ];
}
