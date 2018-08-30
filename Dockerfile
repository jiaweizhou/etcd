FROM 100.125.17.64:20202/zhou544028616/testccc:latest
ADD . /go/src/github.com/coreos/etcd
ADD cmd/vendor /go/src/github.com/coreos/etcd/vendor
RUN go install github.com/coreos/etcd
EXPOSE 2379 2380
ENTRYPOINT ["etcd"]
