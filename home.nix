{ pkgs, ... }: {
  # Allow unfree
  nixpkgs.config.allowUnfree = true;

  fonts.fontconfig.enable = true;

  home = {
    username = "jtobias";
    homeDirectory = "/home/jtobias";

    packages = with pkgs; [
      # Browsers
      firefox
      google-chrome
      opera

      # Mail
      thunderbird

      # Editors
      neovim
      emacs

      virt-manager
      dconf

      # Code Management
      git
      lazygit

      # Development
      jetbrains-toolbox
      minikube
      # java
      gradle
      gradle-completion
      jdk
      ant

      # zig
      zig
      zig-shell-completions

      # Shell
      fastfetch
      nerdfonts

      # General
      vscode

      # Utils
      nixpkgs-fmt
      aria
      zip
      p7zip
    ];
  };

  # Programs configurations
  programs.starship = {
    enable = true;
    settings = {
      add_newline = true;

      character = {
        success_symbol = "[➜](bold green)";
        error_symbol = "[➜](bold red)";
      };

      cmd_duration = {
        disabled = false;
        min_time = 0;
      };

      os = {
        disabled = false;
      };
    };
  };

  programs.home-manager.enable = true;
  programs.bash.enable = true;

  programs.direnv = {
    enable = true;
    enableBashIntegration = true;
    nix-direnv = {
      enable = true;
    };
  };

  # dconf configuration to save virt-manager configs
  dconf.settings = {
    "org/virt-manager/virt-manager/connections" = {
      autoconnect = [ "qemu:///system" ];
      uris = [ "qemu:///system" ];
    };
  };

  /* The home.stateVersion option does not have a default and must be set */
  home.stateVersion = "23.11";
}
