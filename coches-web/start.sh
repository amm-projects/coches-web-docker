#!/bin/sh
set -e

# 4️⃣ APP_KEY
if ! grep -q "^APP_KEY=" .env || [ -z "$(grep '^APP_KEY=' .env | cut -d '=' -f2)" ]; then
  echo "🔑 Generando APP_KEY..."
  php artisan key:generate
fi

# 5️⃣ Esperar MySQL (SIN SSL)
echo "⏳ Esperando a MySQL..."
until mysqladmin ping \
  -h"$DB_HOST" \
  -P"$DB_PORT" \
  -u"$DB_USERNAME" \
  -p"$DB_PASSWORD" \
  --skip-ssl \
  --silent; do
  sleep 2
done

# 6️⃣ Migraciones
if [ "$APP_ENV" = "local" ]; then
  echo "🧹 migrate:fresh --seed"
  php artisan migrate:fresh --seed --force
else
  echo "🚀 migrate"
  php artisan migrate --force
fi

# Permisos brutos (Docker local)
chmod -R 777 storage bootstrap/cache || true

# Symlink SIEMPRE (los volúmenes lo rompen)
rm -rf public/storage
php artisan storage:link

# Cache limpia
php artisan optimize:clear

# 7️⃣ Arrancar servicios
echo "▶️ Arrancando Laravel y Vite con Supervisor..."

exec supervisord -c /etc/supervisor/conf.d/supervisor.conf
