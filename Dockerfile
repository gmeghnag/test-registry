FROM docker.io/library/registry:2 

RUN mkdir -p /auth && echo 'testuser:$2y$05$l05AtkjBmDSIHn01vQEX8.yEp6A5ws.SoM2/7/ETYkyAs3Ozpw8P.' > /auth/htpasswd

env REGISTRY_AUTH="htpasswd"
env REGISTRY_AUTH_HTPASSWD_REALM="Registry Realm"
env REGISTRY_AUTH_HTPASSWD_PATH="/auth/htpasswd"

expose 5000
