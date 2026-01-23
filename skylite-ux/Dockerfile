ARG BUILD_FROM
FROM $BUILD_FROM

# Install system dependencies
RUN apk add --no-cache nodejs npm git openssl

WORKDIR /app

# Clone and install
RUN git clone https://github.com/Wetzel402/SkyLite-UX.git .
RUN npm install

# NUXT INGRESS FIX
ENV NUXT_APP_BASE_URL="./"
ENV NUXT_APP_BUILD_ASSETS_DIR="./_nuxt/"

# Generate Prisma for the specific architecture (ARM/AMD64)
RUN npx prisma generate

# Build the app
RUN npm run build

# --- PORT CONFIGURATION ---
EXPOSE 3000

# Copy your startup script
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]


