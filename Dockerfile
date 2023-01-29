FROM webdevops/php-nginx:8.2-alpine
WORKDIR /opt/docker
COPY bin/service.d/cron.d/10-init.sh bin/service.d/cron.d/10-init.sh
COPY etc/nginx/vhost.conf etc/nginx/vhost.conf
COPY provision/entrypoint.d/05-permissions.sh provision/entrypoint.d/05-permissions.sh
COPY provision/entrypoint.d/artisan.sh provision/entrypoint.d/artisan.sh
COPY provision/entrypoint.d/etc/cron/application provision/entrypoint.d/etc/cron/application
WORKDIR /app
