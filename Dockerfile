FROM alpine:latest

RUN apk update && \
    apk add curl

WORKDIR /app

COPY check_status.sh .

CMD ["sh", "-c", "while true; do sh check_status.sh; sleep 30; done"]
