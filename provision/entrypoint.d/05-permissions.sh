mkdir -p /app/storage/framework/cache
mkdir -p /app/storage/framework/sessions
mkdir -p /app/storage/framework/views
chmod -R +rw /app/storage
chown -R 1000:1000 /app/storage
chmod 1777 /tmp
