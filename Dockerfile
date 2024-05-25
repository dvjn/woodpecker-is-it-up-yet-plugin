FROM alpine:3.20.0

COPY ./entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
