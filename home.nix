{ pkgs, ... }: {
  # Allow unfree
  nixpkgs.config.allowUnfree = true;

  programs.home-manager.enable = true;
  programs.bash.enable = true;

  home = {
    username = "jtobias";
    homeDirectory = "/home/jtobias/";

    packages = with pkgs; [
      # web
      google-chrome
      firefox
      (opera.override { proprietaryCodecs = true; })
      # mail
      thunderbird
      # editors
      neovim
      emacs
      vscode
      # virtualisation
      virt-manager
      dconf
      # development
      git
      lazygit
      jetbrains-toolbox
      minikube
      gradle
      gradle-completion
      jdk
      ant
      zig
      zig-shell-completions
      fastfetch
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
      bc
      kalker
      aria
      zip
      p7zip
      steam
    ];
  };

  # Programs configurations
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
