FROM nicolaka/netshoot:latest

COPY --from=vault:latest /bin/vault /usr/bin/vault
COPY --from=consul:latest /bin/consul /usr/bin/consul

COPY motd /etc/motd
