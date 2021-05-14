FROM postgres:11-alpine
COPY create-multiple-postgresql-databases.sh /docker-entrypoint-initdb.d/
