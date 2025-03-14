#!/bin/bash
echo "Running startup script..."
composer update && php artisan migrate --force && php artisan db:seed --force
# Execute the original command
#exec "$@"
exec php-fpm