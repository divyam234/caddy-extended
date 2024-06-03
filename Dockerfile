FROM caddy:alpine AS builder

RUN xcaddy build --with github.com/caddyserver/forwardproxy

FROM caddy:alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy