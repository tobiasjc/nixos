{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    minikube
    jetbrains-toolbox
    # java
    gradle
    gradle-completion
    ant
    jd-gui
    # zig
    zig
    zig-shell-completions
    zls
    # node
    nodePackages.nodejs
    #misc
    rclone
    rclone-browser
    nixpkgs-fmt
  ];
}
