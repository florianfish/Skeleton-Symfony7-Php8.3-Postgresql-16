# Utilisez l'image de base fournie
FROM yoanbernabeu/symfony-dev-container:latest

RUN install-php-extensions \
    bcmath \
    gd \
    intl \
    pdo_pgsql \
    zip \
    opcache

# PROBLEME SI ON RECUPERE LA DERNIERE VERSION LA PLUS A JOUR
# Symfony CLI
#RUN wget https://get.symfony.com/cli/installer -O - | bash \
#    && mv /root/.symfony*/bin/symfony /usr/local/bin/symfony


# FROM php:8.3-cli

# # Dependencies
# RUN apt-get update \
#     && apt-get install -y \
#         git \
#         libicu-dev \
#         libpq-dev \
#         libzip-dev \
#         unzip \
#         wget \
#         zip \
#         curl \
#     && apt-get clean \
#     && rm -rf /var/lib/apt/lists/*

# # PHP Extensions
# COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/
# RUN install-php-extensions \
#     bcmath \
#     gd \
#     intl \
#     pdo_pgsql \
#     zip \
#     opcache

# # Composer
# COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

# # Symfony CLI
# RUN wget https://get.symfony.com/cli/installer -O - | bash \
#     && mv /root/.symfony*/bin/symfony /usr/local/bin/symfony

# # Working directory
# WORKDIR /workspace

