{ config, pkgs, ... }: {
  programs.vscode.userSettings = {
    "editor.fontFamily" = "'BitstromWera Nerd Font Mono Regular', 'monospace', monospace";
    "editor.fontSize" = 10;
    "terminal.integrated.fontSize" = 10;
    "[nix]"."editor.tabSize" = 2;
    "editor.insertSpaces" = true;
    "zig.path" = "";
    "zig.zls.path" = "";
    "zig.initialSetupDone" = true;
    "extensions.ignoreRecommendations" = true;
    "[javascript]"."editor.defaultFormatter" = "esbenp.prettier-vscode";
  };
}
