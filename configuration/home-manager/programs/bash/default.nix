{ config, pkgs, ... }: {
  programs.bash = {
    enable = true;
    enableCompletion = true;
    enableVteIntegration = true;
    profileExtra = ''
      PATH="$PATH:$HOME/.local/bin"
    '';
  };
}
