FROM scratch

COPY _output/kube-rbac-proxy /usr/local/bin/kube-rbac-proxy

EXPOSE 8080
USER 65532:65532
USER 1001

ENTRYPOINT ["/usr/local/bin/kube-rbac-proxy"]