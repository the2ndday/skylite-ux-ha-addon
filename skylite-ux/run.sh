#!/usr/bin/with-contenv bashio

# Fetch variables from Home Assistant Add-on Options
export DATABASE_URL=$(bashio::config 'database_url')
export HOST=0.0.0.0
export PORT=8080

echo "Checking database connection and running migrations..."
# This ensures the DB schema is up to date on every start
npx prisma migrate deploy

echo "Starting SkyLite-UX on port $PORT..."
# Start the production Nuxt server
node .output/server/index.mjs
