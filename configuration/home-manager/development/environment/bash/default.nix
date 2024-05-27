{ config, pkgs, ... }: {
  programs.bash = {
    enable = true;
    enableCompletion = true;
    enableVteIntegration = true;
    bashrcExtra = ''
      PATH="$PATH:$HOME/.local/bin"
    '';
  };
}
