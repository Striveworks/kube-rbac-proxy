TAG=0.18.2-striveworks-$(date '+%Y-%m-%d')
go mod edit -replace github.com/brancz/kube-rbac-proxy=../kube-rbac-proxy && \
    # go mod tidy && \
    make build && \
    chmod +x _output/kube-rbac-proxy-linux-amd64 && \
    podman build \
    --no-cache \
    -f strive.Dockerfile \
    -t "724664234782.dkr.ecr.us-east-1.amazonaws.com/library/hardened/bitnami/kube-rbac-proxy:${TAG}" \
    . 