# Use an official PHP image as the base image
FROM php:8.2-apache

# Install necessary PHP extensions (like mysqli for MySQL/MariaDB)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy the application files from your local directory to the container
COPY . /var/www/html/Portfolio

# Set appropriate permissions for the application files
RUN chown -R www-data:www-data /var/www/html/Portfolio && chmod -R 755 /var/www/html/Portfolio

# Expose port 80 to allow external access to the web application
EXPOSE 80
