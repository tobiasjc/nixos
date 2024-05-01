{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    # c/c++
    gnumake
    cmake
    ninja

    # java/jvm in general
    gradle
    gradle-completion
    maven
    ant

    # scala
    sbt
    metals
  ];
}
