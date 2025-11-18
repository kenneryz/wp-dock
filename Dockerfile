# Use official WordPress image
FROM wordpress:latest

# Copy local wp-content (optional, keeps your themes/plugins)
COPY ./wp-content /var/www/html/wp-content

# Add custom PHP configuration
COPY php.ini /usr/local/etc/php/conf.d/custom.ini

# Expose port 80 for Railway
EXPOSE 80

# Start Apache (default in WordPress image)
CMD ["apache2-foreground"]
