FROM php:8.2-cli

# Dependencias del sistema
RUN apt-get update && apt-get install -y \
    git \
    curl \
    unzip \
    libzip-dev \
    supervisor \
    default-mysql-client \
    && docker-php-ext-install pdo_mysql zip bcmath


#Copiar supervisor
COPY supervisor.conf /etc/supervisor/conf.d/supervisor.conf

# Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs

WORKDIR /app

# Copiar SOLO package.json primero
#COPY coches-app/package*.json /app/

# 🔥 AQUÍ está la magia
#RUN npm install --include=optional --force

# Copiar proyecto
COPY coches-app/ /app/

# 🔥 BORRA CUALQUIER node_modules (por seguridad)
RUN rm -rf /app/node_modules 
RUN rm -f /app/package-lock.json
RUN npm install

#Crear y enlazar otro public/storage
RUN rm -rf /app/public/storage
RUN php artisan storage:link

# Permisos
RUN chmod +x /app/start.sh

EXPOSE 8000 5173

CMD ["sh", "/app/start.sh"]
