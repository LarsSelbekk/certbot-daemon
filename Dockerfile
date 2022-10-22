FROM certbot/certbot:latest

RUN pip install certbot-dns-domeneshop
COPY onRenew.sh /
RUN echo '0	0,12	*	*	*	certbot renew --deploy-hook "/onRenew.sh"' >> /etc/crontabs/root
