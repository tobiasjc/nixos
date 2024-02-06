{ config, pkgs, ... }: {
  programs.vscode.userSettings = {
    "editor.fontFamily" = "'Mononoki Nert Font Mono Regular', 'monospace', monospace";
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
