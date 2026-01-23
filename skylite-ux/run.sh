#!/usr/bin/with-contenv bashio

# 1. Check if the database_url is empty
if ! bashio::config.has_value 'database_url' || [ "$(bashio::config 'database_url')" = "postgresql://user:pass@localhost:5432/skylite" ]; then
    bashio::log.error "-------------------------------------------------------------------"
    bashio::log.error " CONFIGURATION ERROR:"
    bashio::log.error " You must provide a valid PostgreSQL connection string."
    bashio::log.error " Example: postgresql://postgres:mysecretpassword@localhost:5432/postgres"
    bashio::log.error "-------------------------------------------------------------------"
    # Wait a bit so the user can actually read the log before it restarts
    sleep 30
    exit 1
fi

export DATABASE_URL=$(bashio::config 'database_url')
export HOST=0.0.0.0
export PORT=3000

bashio::log.info "Synchronizing database schema with Prisma..."
if ! npx prisma migrate deploy; then
    bashio::log.error "Failed to connect to the database. Is the PostgreSQL add-on running?"
    exit 1
fi

bashio::log.info "Starting SkyLite UX..."
node .output/server/index.mjs
