{ config, pkgs, ... }: {
  # PHP FPM
  services.phpfpm = {
    # Good extensions
    phpOptions = ''
      extension=${pkgs.phpExtensions.apcu}/lib/php/extensions/apcu.so
      extension=${pkgs.phpExtensions.bz2}/lib/php/extensions/bz2.so
    '';

    pools.localhost = {
      user = "jtobias";
      group = "users";

      settings = {
        "listen.owner" = config.services.httpd.user;
        "pm" = "dynamic";
        "pm.max_children" = 32;
        "pm.max_requests" = 500;
        "pm.start_servers" = 2;
        "pm.min_spare_servers" = 2;
        "pm.max_spare_servers" = 5;
        "php_admin_value[error_log]" = "stderr";
        "php_admin_flag[log_errors]" = true;
        "catch_workers_output" = true;
      };
      phpEnv."PATH" = pkgs.lib.makeBinPath [ pkgs.php ];
    };
  };

  # Apache httpd
  services.httpd = {
    enable = true;
    extraModules = [
      # Setup proxy for fcgi
      # Docs: https://httpd.apache.org/docs/2.4/mod/mod_proxy_fcgi.html
      "proxy"
      "proxy_fcgi"
    ];

    virtualHosts."localhost" = {
      documentRoot = "/srv/www/localhost";
      # Setup proxy for fcgi
      # Docs: https://httpd.apache.org/docs/2.4/mod/mod_proxy_fcgi.html
      extraConfig = ''
        <FilesMatch \.php$>
          SetHandler "proxy:unix:${config.services.phpfpm.pools.localhost.socket}|fcgi://localhost/"
        </FilesMatch>
      '';
    };
  };

  # HTTP server ports
  networking.firewall.allowedTCPPorts = [ 80 443 ];
}
