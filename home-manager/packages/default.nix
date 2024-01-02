{ config, pkgs, ... }: {
  imports = [
    ./codecs
    ./cuda
    ./development
    ./media
    ./misc
    ./web
  ];
}
