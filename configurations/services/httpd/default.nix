{ config, pkgs, ... }: {
  imports = [
    ./phpfm.nix
    ./httpd.nix
  ];

  networking.firewall.allowedTCPPorts = [ 80 443 ];
}
