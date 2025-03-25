FROM debian:11.11

RUN apt-get update && \
    apt-get install -y nginx openssl nano && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt \
    -subj "/CN=localhost"

COPY ./conf/nginx.conf /etc/nginx/sites-available/default

RUN ln -sf /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default

RUN chmod 755 /etc/ssl/private/nginx-selfsigned.key

RUN mkdir -p /var/www/html && \
    echo "<h1>Welcome to Nginx with SSL</h1>" > /var/www/html/index.html

RUN chmod 755 /var/www/html/index.html

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
