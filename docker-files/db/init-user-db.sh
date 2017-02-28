#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<EOSQL
    CREATE ROLE app LOGIN PASSWORD 'appadmin';
    CREATE DATABASE app;
    GRANT ALL PRIVILEGES ON DATABASE app TO app;
EOSQL