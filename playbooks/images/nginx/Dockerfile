FROM nginx:1.21.0-alpine
RUN apk add python3 python3-dev py3-pip build-base libressl-dev musl-dev libffi-dev rust cargo
RUN pip3 install pip --upgrade
RUN pip3 install certbot-nginx
# COPY nginx_gencert.conf /etc/nginx/conf.d/default.conf
# COPY nginx.conf /home/nginx.conf
# RUN mkdir /var/www
# RUN mkdir /var/www/gencert
COPY nginx.conf /etc/nginx/conf.d/default.conf
CMD ["sh", "-c", "nginx ; certbot --noninteractive --agree-tos --cert-name matiklive -d chess.${SITE_URL} -d url.${SITE_URL} -d files.${SITE_URL} -m ${CERT_EMAIL}"]


