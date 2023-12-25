FROM postgres:alpine3.18

COPY create_databases.sql /docker-entrypoint-initdb.d/

RUN chmod +x /docker-entrypoint-initdb.d/create_databases.sql

EXPOSE 5432