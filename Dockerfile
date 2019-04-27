FROM ubuntu:bionic
ADD ./target/classes/hello-run /hello-run
ENTRYPOINT ["/hello-run"]
