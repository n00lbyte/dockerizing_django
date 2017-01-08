#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
	CREATE USER django WITH PASSWORD 'secret';
	CREATE DATABASE django;
	GRANT ALL PRIVILEGES ON DATABASE django TO django;
EOSQL
