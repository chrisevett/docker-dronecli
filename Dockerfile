FROM debian:stretch

RUN apt update && \
    apt install wget --yes && \
    wget https://github.com/drone/drone-cli/releases/download/v0.8.6/drone_linux_arm64.tar.gz && \
    tar -xzvf ./drone_linux_arm64.tar.gz

ENTRYPOINT ["./drone"]
