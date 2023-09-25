FROM alpine:3.10
COPY entrypoint.sh /entrypoint.sh
RUN apk --no-cache add curl
ENTRYPOINT ["/entrypoint.sh"]
