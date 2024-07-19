{ config, pkgs, ... }: {
  programs.gradle = {
    enable = true;
    settings = {
      "org.gradle.caching" = true;
      "org.gradle.parallel" = true;
      "org.gradle.daemon" = true;
    };
  };
}
