#!/bin/bash
set -euo pipefail

# Runs once, on first initialisation of an empty data volume.
# Schemas and roles only - Flyway owns every table.

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<EOSQL
CREATE ROLE catalog_service      LOGIN PASSWORD '${CATALOG_DB_PASSWORD}';
CREATE ROLE split_service        LOGIN PASSWORD '${SPLIT_DB_PASSWORD}';
CREATE ROLE notification_service LOGIN PASSWORD '${NOTIFICATION_DB_PASSWORD}';

CREATE SCHEMA catalog      AUTHORIZATION catalog_service;
CREATE SCHEMA split        AUTHORIZATION split_service;
CREATE SCHEMA notification AUTHORIZATION notification_service;

-- Each service sees only its own schema by default.
ALTER ROLE catalog_service      SET search_path = catalog;
ALTER ROLE split_service        SET search_path = split;
ALTER ROLE notification_service SET search_path = notification;

-- No implicit object creation in public by anyone.
REVOKE ALL ON SCHEMA public FROM PUBLIC;
EOSQL

echo "SAM: created catalog / split / notification schemas and owner roles."