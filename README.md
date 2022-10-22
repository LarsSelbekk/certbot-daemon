# Certbot daemon
Simple setup for having Certbot auto-renew and copy to a destination folder
(usually mount to a web server container), using domeneshop plugin.

## Setup
```sh
cp .env.dist .env
```
Edit `.env`, filling required values.

Go to [certbot-dns-domeneshop](https://github.com/domeneshop/certbot-dns-domeneshop#credentials)
for instructions on generating a `domeneshop.ini`-file, which must be placed next
to `docker-compose.yml`. Then set its permissions:
```sh
chmod 400 domeneshop.ini
```

## Running
Run using
```sh
docker-compose up -d
```
