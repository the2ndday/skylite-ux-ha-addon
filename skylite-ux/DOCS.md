# Documentation: SkyLite-UX

## Database Connection
This add-on requires an external PostgreSQL database. 

### Connection String Format
Ensure your `database_url` follows this format:
`postgresql://USER:PASSWORD@HOST:PORT/DB_NAME`

### Common Hostnames
- If using the Alexbelgium PostgreSQL add-on: `localhost` or your HA IP.
- Default Port: `5432`

## First Run
On the very first start, the add-on will run database migrations. This creates the necessary tables. If you see errors in the logs initially, wait 30 seconds and restart the add-on once the database is ready.

## Ingress
Once started, you can access the interface by clicking "Open Web UI" or by selecting "SkyLite" in your Home Assistant sidebar.
