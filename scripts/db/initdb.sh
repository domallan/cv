#!/bin/bash

set -e

docker compose up -d

docker exec -e POSTGRES_USER=postgres -e POSTGRES_DB=postgres -it cv-db-1 \
psql -e -v ON_ERROR_STOP=1 -h localhost -p 5432 -U "$POSTGRES_USER" --dbname "$POSTGRES_DB"  -f /scripts/db/base.sql
