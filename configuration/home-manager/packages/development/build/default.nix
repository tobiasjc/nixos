{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    gnumake
    gradle
    gradle-completion
    maven
    ant
  ];
}
