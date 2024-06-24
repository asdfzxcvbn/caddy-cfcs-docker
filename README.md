# caddy-cfcs-docker
caddy docker images with cloudflare support and crowdsec bouncer

# usage
`docker network create crowdnet` or `podman network create crowdnet`

then modify the example `docker-compose.yml` and `Caddyfile` as necessary

also follow https://docs.crowdsec.net/docs/configuration/crowdsec_configuration/#environment-variables to configure crowdsec to use the mariadb image

also configure all of crowdsec to read logs and stuff goodluck lol
