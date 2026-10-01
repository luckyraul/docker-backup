FROM debian:trixie-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    default-mysql-client \
    postgresql-client \
    pv \
    rclone \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /backup

ENTRYPOINT ["/bin/bash"]