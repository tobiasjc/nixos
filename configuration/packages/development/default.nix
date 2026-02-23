{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    jetbrains-toolbox
    javaPackages.compiler.temurin-bin.jdk-21
    gradle_9
  ];
}
