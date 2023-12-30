{ config, pkgs, ... }: {
  fonts = {
    packages = with pkgs; [
      nerdfonts
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-emoji
      noto-fonts-color-emoji
    ];

    fontconfig = {
      enable = true;

      defaultFonts = {
        monospace = [ "CaskaydiaCove Nerd Font Mono" ];
      };
    };
  };
}
