FROM ubuntu

RUN apt-get update && \
    apt-get install -y davfs2 && \
    apt-get clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT /docker-entrypoint.sh