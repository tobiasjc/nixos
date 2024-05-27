{ config, pkgs, ... }: {
  services = {
    postgresql = {
      enable = true;
    };

    # Always good to have some type of GUI for database engines,
    # since PostgreSQL doesn't come with one, I'll enable PGAdmin
    pgadmin = {
      enable = true;
      initialEmail = "jose.tobias@outlook.com";
      initialPasswordFile = ./initialPasswordFile.txt;
    };
  };
}
