FROM 100.125.0.198:20202/zhou544028616/etcd:latest
ADD . /go/src/github.com/coreos/etcd
ADD cmd/vendor /go/src/github.com/coreos/etcd/vendor
RUN go install github.com/coreos/etcd
EXPOSE 2379 2380

ENTRYPOINT ["etcd"]
