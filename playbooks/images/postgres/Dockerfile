FROM postgres:16.1-alpine3.19

COPY create_databases.sql /docker-entrypoint-initdb.d/
RUN chmod +x /docker-entrypoint-initdb.d/create_databases.sql

# COPY modify_pg_hba.sh /usr/local/bin/
# RUN chmod +x /usr/local/bin/modify_pg_hba.sh

RUN chmod +x /docker-entrypoint-initdb.d/create_databases.sql

EXPOSE 5432
# ENTRYPOINT ["modify_pg_hba.sh"]