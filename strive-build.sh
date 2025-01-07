make build

TAG=0.18.2-striveworks-$(date '+%Y-%m-%d')
podman build \
    -f strive.Dockerfile \
    -t "724664234782.dkr.ecr.us-east-1.amazonaws.com/library/hardened/bitnami/kube-rbac-proxy:${TAG}" \
    . 