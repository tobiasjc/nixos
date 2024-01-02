{ config, pkgs, ... }: {
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
}
