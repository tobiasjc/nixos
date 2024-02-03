{ config, pkgs, ... }: {
  programs.starship = {
    enable = true;

    settings = {
      add_newline = true;

      character = {
        format = "$symbol ";
        success_symbol = "[ \\$](bold green)";
        error_symbol = "[ \\$](bold red)";

        vimcmd_symbol = "[ \\$](bold green)";
        vimcmd_replace_one_symbol = "[ \\$](bold cyan)";
        vimcmd_replace_symbol = "[ \\$](bold purple)";
        vimcmd_visual_symbol = "[ \\$](bold yellow)";
        disabled = false;
      };

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
}
