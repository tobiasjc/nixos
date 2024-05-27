{ config, pkgs, ... }: {
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;

    withRuby = true;
    withPython3 = true;
    withNodeJs = true;

    coc = {
      enable = true;
    };

    extraConfig = ''
      colorscheme koehler
    '';
  };
}
