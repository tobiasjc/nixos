{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    minikube
    jd-gui
    jetbrains-toolbox
    gradle
    gradle-completion
    jdk
    ant
    zig
    zig-shell-completions
    zls
    rclone
    rclone-browser
    nixpkgs-fmt
  ];
}
