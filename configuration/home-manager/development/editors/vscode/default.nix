{ config, pkgs, ... }: {

  imports = [
    ./extensions.nix
    ./user-settings.nix
  ];

  programs.vscode = {
    enable = true;
    package = pkgs.vscode-fhs;
    mutableExtensionsDir = true;
    enableExtensionUpdateCheck = true;
  };
}
