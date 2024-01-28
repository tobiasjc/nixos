{ config, pkgs, ... }: {
  imports = [
    ./build
    ./data
    ./environment
    ./kubernetes
    ./misc
    ./node
    ./python
    ./tests
    ./zig
  ];

  home.packages = with pkgs; [
    jetbrains-toolbox
    jd-gui
  ];
}
