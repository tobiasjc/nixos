{ config, pkgs, ... }: {
  imports = [
    ./codecs
    ./cuda
    ./development
    ./media
    ./misc
    ./music
    ./office
    ./vpn
    ./web
  ];
}
