FROM docker.io/caddy:2.8.4-builder-alpine AS builder

RUN xcaddy build v2.8.4 \
    --with github.com/hslatman/caddy-crowdsec-bouncer/http \
    --with github.com/caddy-dns/cloudflare

FROM docker.io/caddy:2.8.4-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

EXPOSE 80
EXPOSE 443
EXPOSE 443/udp

WORKDIR /data
CMD ["caddy", "run", "--config", "/data/Caddyfile"]
