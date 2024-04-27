# php Apache as parent image
FROM php:8.2-apache

# Copy the current directory contents into the container at /var/www/html
COPY . /var/www/html/

# Update package lists and install additional dependencies
RUN apt-get update && \
    apt-get install -y \
    vim \
    nano \
    && rm -rf /var/lib/apt/lists/* &&\
    a2enmod rewrite
    

# Expose port 80 to the outside world
EXPOSE 80
