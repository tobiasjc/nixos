{ config, pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      # bash
      vscode-extensions.mads-hartmann.bash-ide-vscode
      timonwong.shellcheck
      foxundermoon.shell-format

      # http
      anweber.vscode-httpyac

      # documents
      yzhang.markdown-all-in-one
    ];
  };
}
