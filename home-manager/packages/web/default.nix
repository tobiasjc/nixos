{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    (opera.override { proprietaryCodecs = true; })
    google-chrome
    firefox
    tor-browser
    palemoon-bin
    netsurf.browser
    aria
  ];
}
