#!/usr/bin/with-contenv bashio

export DATABASE_URL=$(bashio::config 'database_url')
export HOST=0.0.0.0
export PORT=8080

echo "Syncing database schema..."
npx prisma migrate deploy

echo "Starting SkyLite UX..."
node .output/server/index.mjs
