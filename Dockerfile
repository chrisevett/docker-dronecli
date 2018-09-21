FROM drone/ca-certs

RUN wget https://github.com/drone/drone-cli/releases/download/v0.8.6/drone_linux_arm64.tar.gz && \
    tar -xzvf ./drone_linux_arm64.tar.gz

ENTRYPOINT ["./drone"]
