{ config, pkgs, ... }: {
  imports = [
    ./browsers
    ./cloud
    ./downloaders
    ./vpn
  ];
}
