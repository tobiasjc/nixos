{ config, pkgs, ... }: {
  imports = [
    ./codecs
    ./cuda
    ./development
    ./misc
    ./web
  ];
}
