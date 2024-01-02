{ config, pkgs, ... }: {
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;

    coc = {
      enable = true;
    };

    withRuby = true;
    withPython3 = true;
    withNodeJs = true;
  };
}
