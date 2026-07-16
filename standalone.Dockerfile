FROM alpine:latest

LABEL org.opencontainers.image.source=https://github.com/strlud/ha-linky
LABEL org.opencontainers.image.description="HA Linky Standalone"
LABEL org.opencontainers.image.licenses=MIT

RUN apk add --no-cache nodejs npm

WORKDIR /linky

# Copy add-on code
COPY . .


CMD [ "node", "--experimental-modules", "dist/index.js" ]

