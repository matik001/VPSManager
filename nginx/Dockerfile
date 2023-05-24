FROM nginx:1.21.0-alpine
RUN apk add python3 python3-dev py3-pip build-base libressl-dev musl-dev libffi-dev rust cargo
RUN pip3 install pip --upgrade
RUN pip3 install certbot-nginx
COPY cron.txt /cron.txt
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["sh", "-c", "/usr/sbin/crond -l 8 & nginx -g 'daemon off;'"]


