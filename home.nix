{ config, pkgs, ... }: {
  # Allow unfree
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowUnfreePredicate = _: true; # for standalone software

  home = {
    packages = with pkgs; [
      home-manager

      # web
      (opera.override { proprietaryCodecs = true; })
      google-chrome
      firefox
      tor-browser
      palemoon-bin
      netsurf.browser

      # mail
      thunderbird

      # editors
      emacs
      vscode

      # virtualisation
      minikube

      # development
      tmux
      lazygit
      jd-gui
      jetbrains-toolbox
      gradle
      gradle-completion
      jdk
      ant
      zig
      zig-shell-completions
      rclone
      rclone-browser
      nixpkgs-fmt

      # codecs
      ffmpeg
      openh264
      mediastreamer
      mediastreamer-openh264
      gst_all_1.gst-libav
      gst_all_1.gstreamer
      # cuda libraries
      # cudaPackages.cudatoolkit
      # cudaPackages.cutensor
      # cudaPackages.tensorrt
      # utils
      fastfetch
      bc
      kalker
      aria
      zip
      p7zip
      keepassxc
    ];
  };
  programs.home-manager.enable = true;

  programs.git = {
    enable = true;
    lfs.enable = true;
    extraConfig = {
      init = {
        defaultBranch = "main";
      };
      credential = {
        helper = "cache --timeout=28800";
      };
    };
  };

  programs.bash = {
    enable = true;
    enableCompletion = true;
  };

  programs.starship = {
    enable = true;
    settings = {
      add_newline = true;
      time = {
        disabled = false;
      };
      username = {
        disabled = false;
        show_always = true;
      };
      status = {
        disabled = false;
        pipestatus = true;
        map_symbol = true;
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
