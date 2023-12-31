{ config, pkgs, ... }: {
  programs.git = {
    enable = true;
    lfs.enable = true;
    config = {
      init = {
        defaultBranch = "main";
      };
      credential = {
        helper = "cache";
      };
    };
  };
}
