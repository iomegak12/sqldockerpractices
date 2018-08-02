FROM microsoft/mssql-server-linux:2017-latest

ENV ACCEPT_EULA Y

COPY ./restore-databases.sql .

RUN /opt/mssql-tools/bin/sqlcmd -i restore-databases.sql
