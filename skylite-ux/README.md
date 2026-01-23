# SkyLite-UX Home Assistant Add-on

## Prerequisites: Database Setup

SkyLite-UX requires a **PostgreSQL** database. To set one up easily within Home Assistant:

1. **Add the Community Repository:**
   - Go to **Settings > Add-ons > Add-on Store**.
   - Click the **three dots** (top right) > **Repositories**.
   - Add this URL: `https://github.com/alexbelgium/hassio-addons`
2. **Install PostgreSQL:**
   - Search for **PostgreSQL** in the store and install it.
3. **Start the Database:**
   - Set a username and password in the PostgreSQL **Configuration** tab and click **Start**.

## Installation

1. Go to **Settings > Add-ons > Add-on Store**.
2. Click the **three dots** (top right) > **Repositories**.
3. Paste this URL: `https://github.com/the2ndday/skylite-ux-ha-addon`
4. Click **Add**, then close the popup.
5. Find **SkyLite UX** in the list and click **Install**.

## Configuration

Before starting the add-on, go to the **Configuration** tab and provide your database connection string:

```yaml
database_url: "postgresql://USER:PASSWORD@HOSTNAME:5432/DATABASE_NAME"
