{ config, pkgs, ... }: {
  imports = [
    ./ferretdb
    ./mysql
    ./postgresql
  ];
}
