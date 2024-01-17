{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    rclone
    rclone-browser
    meld
    nixpkgs-fmt
  ];
}
