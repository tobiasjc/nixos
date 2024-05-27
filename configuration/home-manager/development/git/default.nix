{ config, pkgs, ... }: {
  programs.git = {
    enable = true;
    lfs.enable = true;
    extraConfig = {
      init = {
        defaultBranch = "main";
      };
      credential = {
        helper = "cache --timeout=28800";
      };
    };
  };

  programs.lazygit.enable = true;

  home.packages = with pkgs; [
    meld
  ];
}
