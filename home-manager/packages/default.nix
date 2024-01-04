{ config, pkgs, ... }: {
  imports = [
    ./codecs
    ./cuda
    ./development
    ./media
    ./misc
    ./office
    ./web
  ];
}
