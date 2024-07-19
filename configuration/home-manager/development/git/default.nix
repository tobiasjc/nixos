{ config, pkgs, ... }: {
  programs.git = {
    enable = true;
    lfs.enable = true;

    userName = "José Tobias";
    userEmail = "jose.tobias@outlook.com";

    diff-so-fancy = {
      enable = true;
    };

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
}
