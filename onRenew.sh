#!/bin/sh

MAIN_DOMAIN=$(echo "$DOMAINS" | cut -f1 -d',')
cp "/etc/letsencrypt/live/$MAIN_DOMAIN/fullchain.pem" "/etc/letsencrypt/live/$MAIN_DOMAIN/privkey.pem" /certs
