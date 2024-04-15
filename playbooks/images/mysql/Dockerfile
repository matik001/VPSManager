FROM mysql:8.3.0
ARG MYSQL_USER
ENV MYSQL_USER=$MYSQL_USER

COPY *.sql /docker-entrypoint-initdb.d/
RUN sed -i 's/USERNAME/'$MYSQL_USER'/g' /docker-entrypoint-initdb.d/create_databases.sql

EXPOSE 5432