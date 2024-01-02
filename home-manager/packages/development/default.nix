{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    asdf-vm
    minikube
    jetbrains-toolbox
    # java
    gradle
    gradle-completion
    maven
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
