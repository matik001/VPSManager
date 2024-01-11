#!/bin/sh
# Usuń dwie ostatnie linie z pg_hba.conf
sed -i '$d' /var/lib/postgresql/data/pg_hba.conf
sed -i '$d' /var/lib/postgresql/data/pg_hba.conf

# Dodaj nową regułę
echo "host all all all md5" > /var/lib/postgresql/data/pg_hba.conf

# Uruchom oryginalny entrypoint
exec docker-entrypoint.sh postgres