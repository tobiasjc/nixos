{ config, pkgs, ... }:
{
  fonts = {
    packages = with pkgs; [
      nerd-fonts."m+"
      nerd-fonts.noto
      nerd-fonts.hack
      nerd-fonts.agave
      nerd-fonts.monoid
      nerd-fonts.profont
      nerd-fonts.monofur
      nerd-fonts.hasklug
      nerd-fonts.cousine
      nerd-fonts.go-mono
      nerd-fonts.overpass
      nerd-fonts.mononoki
      nerd-fonts.meslo-lg
      nerd-fonts.monaspace
      nerd-fonts.fira-mono
      nerd-fonts.fira-code
      nerd-fonts.anonymice
      nerd-fonts.space-mono
      nerd-fonts.ubuntu-sans
      nerd-fonts.ubuntu-mono
      nerd-fonts.intone-mono
      nerd-fonts.inconsolata
      nerd-fonts.commit-mono
      nerd-fonts.symbols-only
      nerd-fonts.iosevka-term
      nerd-fonts.adwaita-mono
      nerd-fonts.atkynson-mono

      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-emoji
      noto-fonts-color-emoji
    ];
  };
}
