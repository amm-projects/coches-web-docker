FROM php:8.2-cli

# Dependencias del sistema
RUN apt-get update && apt-get install -y \
    git curl unzip libzip-dev libonig-dev supervisor default-mysql-client \
    && docker-php-ext-install pdo_mysql zip bcmath mbstring \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Instalar Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs

# Instalar Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Copiar supervisor
COPY supervisor.conf /etc/supervisor/conf.d/supervisor.conf

# Establecer directorio de trabajo
WORKDIR /app

# Copiar proyecto completo
COPY coches-web/ /app/

# Instalar dependencias PHP y Node
RUN composer config --global process-timeout 0 \
&& composer install --no-interaction --optimize-autoloader
RUN npm config set fetch-retries 10 \
    && npm config set fetch-retry-mintimeout 20000 \
    && npm config set fetch-retry-maxtimeout 300000 \
    && npm install

# Permisos
RUN chmod +x /app/start.sh

EXPOSE 8000 5173

CMD ["sh", "/app/start.sh"]
