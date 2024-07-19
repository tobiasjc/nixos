{ config, pkgs, ... }: {
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
    };
  };
}
