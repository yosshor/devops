FROM mysql:8.0.33
LABEL "PROJECT"="Yosproject"
LABEL "Author"="yosshor"

ENV MYSQL_ROOT_PASSWORD="root"
ENV MYSQL_DATABASE="accounts"


ADD db_backup.sql  docker-entrypoint-initdb.d/db_backup.sql