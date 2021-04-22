FROM certbot/certbot:v1.14.0

RUN pip install --no-cache-dir certbot-dns-linode

ENV API_KEY="0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ64"
ENV API_VERSION="4"

COPY entrypoint.sh /entry.sh

RUN chmod +x  /entry.sh

ENTRYPOINT [ "/entry.sh" ] 
