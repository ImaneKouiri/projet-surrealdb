#!/bin/bash

echo "Starting SurrealDB..."
docker compose up -d

sleep 2

echo "Loading schema..."
cat schema/init.surql | docker exec -i surrealdb /surreal sql \
  --endpoint http://localhost:8000 \
  --username root \
  --password root \
  --namespace test \
  --database test

echo "Loading seed data..."
cat data/seed.surql | docker exec -i surrealdb /surreal sql \
  --endpoint http://localhost:8000 \
  --username root \
  --password root \
  --namespace test \
  --database test

echo "Done"
