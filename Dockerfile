FROM mysql/mysql-server:latest

EXPOSE 3306
EXPOSE 33060

COPY create_db_in_container.sql /docker-entrypoint-initdb.d
