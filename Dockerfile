FROM alpine:3.10

RUN apk --update add openssh-client && rm -f /var/cache/apk/*

ADD start.sh app/

RUN chmod +x /app/start.sh

ENTRYPOINT ["/app/start.sh"]

