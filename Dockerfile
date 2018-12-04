FROM debian:stretch-slim

RUN apt-get update && apt-get install -y \
    cron \
    curl

CMD ["cron", "-f"]
