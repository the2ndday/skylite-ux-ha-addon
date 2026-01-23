ARG BUILD_FROM
FROM $BUILD_FROM

# Install dependencies needed for Node.js and Prisma
RUN apk add --no-cache \
    nodejs \
    npm \
    git \
    openssl \
    python3 \
    make \
    g++

# Set working directory
WORKDIR /app

# Clone the repository
RUN git clone https://github.com/Wetzel402/SkyLite-UX.git .

# Install dependencies
RUN npm install

# Generate Prisma Client (This detects the architecture e.g., aarch64 vs amd64)
RUN npx prisma generate

# Build the Nuxt application
RUN npm run build

# Copy startup script
COPY run.sh /
RUN chmod a+x /run.sh

# Home Assistant Add-ons use the S6 overlay or a simple script
CMD [ "/run.sh" ]
