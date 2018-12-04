FROM debian:stretch-slim

RUN apt-get update && apt-get install -y \
        cron \
        curl; \
    mkdir -p /home/docker/logs; \
    mkdir -p /home/docker/cron.d

COPY forlabs-cron-entrypoint /usr/local/bin/

ENTRYPOINT ["forlabs-cron-entrypoint"]
