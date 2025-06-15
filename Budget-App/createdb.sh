#!/bin/bash
set -e

# Create role in PostgreSQL (only once)
psql -U postgres -c "DO \$\$ BEGIN
   IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = 'marvels') THEN
     CREATE ROLE marvels WITH LOGIN SUPERUSER PASSWORD 'rails';
   END IF;
END \$\$;"

