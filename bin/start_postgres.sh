"#!/usr/bin/env bash"

set -euo pipefail
which psql > /dev/null || (echo "Please ensure that postgres client is in your PATH" && exit 1)

mkdir -p C:\Program Files\PostgreSQL
rm -rf C:\Program Files\PostgreSQL\9.6\data

docker run --rm --name pg-docker -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=dev -d -p 5432:5432 -v $HOME/docker/volumes/postgres:/var/lib/postgresql postgres
sleep 3
export PGPASSWORD=postgres
psql -U postgres -d dev -h localhost -f schema.sql
psql -U postgres -d dev -h localhost -f data.sql