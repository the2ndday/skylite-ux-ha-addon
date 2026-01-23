## Installation

1. Go to **Settings > Add-ons > Add-on Store**.
2. Click the three dots in the top right corner and select **Repositories**.
3. Paste this URL: `https://github.com/the2ndday/skylite-ux-ha-addon`
4. Click **Add**, then close the popup.
5. Find **SkyLite UX** in the list and click **Install**.

## Configuration

SkyLite-UX requires a **PostgreSQL** database to function. 

1. Install a PostgreSQL add-on (e.g., from the [Alexbelgium Repository](https://github.com/alexbelgium/hassio-addons)).
2. In the SkyLite UX **Configuration** tab, enter your database connection string:
   ```yaml
   database_url: "postgresql://user:password@hostname:5432/dbname"
