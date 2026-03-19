FROM node:20-alpine as asset-builder

# إنشاء المستخدم وتغيير ID ليطابق السيرفر (33)
RUN apk add --no-cache shadow && usermod -u 33 node && groupmod -g 33 node

WORKDIR /app
# تغيير ملكية مجلد العمل قبل البدء
RUN chown -R node:node /app

USER node

COPY --chown=node:node package*.json ./
RUN npm install
COPY --chown=node:node . .
RUN npm run build

# المرحلة الثانية: PHP-FPM مجهز لصلاحيات Nginx
FROM php:8.2-fpm-alpine

# تثبيت الأدوات وتوحيد ID المستخدم www-data مع السيرفر (33)
RUN apk update && apk upgrade && apk add --no-cache \
    libpng-dev libzip-dev zip unzip git curl shadow oniguruma-dev \
    && usermod -u 33 www-data && groupmod -g 33 www-data

# تثبيت إضافات PHP
RUN docker-php-ext-install pdo pdo_mysql bcmath gd zip

# تثبيت Redis
RUN mkdir -p /usr/src/php/ext/redis \
    && curl -fsSL https://github.com/phpredis/phpredis/archive/5.3.7.tar.gz | tar xvz -C /usr/src/php/ext/redis --strip 1 \
    && docker-php-ext-install redis

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html

# --- ضبط الصلاحيات قبل البدء بالعمليات ---
RUN chown -R www-data:www-data /var/www/html

# التبديل لمستخدم Nginx (www-data) لتنفيذ العمليات
USER www-data

# نسخ ملفات Composer والمجلدات المطلوبة قبل التثبيت
COPY --chown=www-data:www-data composer.json composer.lock ./
# السطر التالي يحل المشكلة عبر توفير المجلد المحلي للكومبوزر


RUN composer install --no-dev --optimize-autoloader --no-scripts --ignore-platform-reqs

# نسخ بقية المشروع بصلاحيات www-data
COPY --chown=www-data:www-data . .

# نسخ مخرجات Vite بصلاحيات www-data
COPY --from=asset-builder --chown=www-data:www-data /app/public/build ./public/build

# التأكد من وجود مجلدات Laravel ومنحها الصلاحيات الكاملة للكتابة
RUN mkdir -p storage/framework/cache/data \
             storage/framework/sessions \
             storage/framework/views \
             storage/logs \
             bootstrap/cache

EXPOSE 9000

CMD ["php-fpm"]
