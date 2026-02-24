# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./configuration
  ];

  # Allow unfree packages
  nixpkgs = {
    config = {
      allowInsecure = true;
      allowUnfree = true;

      # easy cuda support
      # cudnnSupport = true;
      # cudaSupport = true;
    };
  };

  # Bootloader
  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    kernelModules = [
      "kvm-amd"
      "kvm-intel"
    ];
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
  };

  # network
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  # Allow experimental features by default
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # Define MY user account. Don't forget to set a password with ‘passwd’.
  users.users.josetobias = {
    isNormalUser = true;
    description = "José Tobias";
    extraGroups = [
      "scanner"
      "lp"
      "networkmanager"
      "wheel"
      "docker"
      "libvirtd"
      "vboxusers"
    ];
    shell = pkgs.bash;
  };

  # Set your time zone.
  time.timeZone = "America/Sao_Paulo";

  # Select internationalisation properties.
  i18n = {
    defaultLocale = "en_US.UTF-8";
    extraLocaleSettings = {
      LC_ADDRESS = "pt_BR.UTF-8";
      LC_IDENTIFICATION = "pt_BR.UTF-8";
      LC_MEASUREMENT = "pt_BR.UTF-8";
      LC_MONETARY = "pt_BR.UTF-8";
      LC_NAME = "pt_BR.UTF-8";
      LC_NUMERIC = "pt_BR.UTF-8";
      LC_PAPER = "pt_BR.UTF-8";
      LC_TELEPHONE = "pt_BR.UTF-8";
      LC_TIME = "pt_BR.UTF-8";
    };
  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # xserver keyboard
  services.xserver = {
    xkb = {
      layout = "br";
      variant = "";
    };
    autoRepeatDelay = 150;
    autoRepeatInterval = 30;
  };

  console.keyMap = "br-abnt2";
  security.rtkit.enable = true;

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  programs.mtr.enable = true;

  programs.ssh = {
    startAgent = true;
    enableAskPassword = false;
  };

  # Enable the OpenSSH daemon and agent
  services.openssh.enable = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.11"; # Did you read the comment?
}
