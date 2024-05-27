{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    xarchiver
    gzip
    zip
    unzip
    rar
    p7zip
    bzip2
    bzip3
  ];
}
