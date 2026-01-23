ARG BUILD_FROM
FROM $BUILD_FROM

# Install system dependencies
RUN apk add --no-cache nodejs npm git openssl

WORKDIR /app

# Clone and install
RUN git clone https://github.com/Wetzel402/SkyLite-UX.git .
RUN npm install

# IMPORTANT: Generate Prisma for the specific architecture (ARM/AMD64)
RUN npx prisma generate

# Build the app
RUN npm run build

# Copy your startup script
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
