{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    openconnect
    openvpn
  ];
}
