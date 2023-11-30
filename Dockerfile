FROM docker.io/library/registry:2 

RUN mdir -p /auth && echo 'testuser:$2y$05$.TrL3oTSG3ryGYa0WXJcOuM0I0IIbut9t05TW6yxDjDfO7pwFuKV2' > /auth/htpasswd

env REGISTRY_AUTH="htpasswd"
env REGISTRY_AUTH_HTPASSWD_REALM="Registry Realm"
env REGISTRY_AUTH_HTPASSWD_PATH="/auth/htpasswd"

expose 5000
