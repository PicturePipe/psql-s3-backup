FROM alpine:3.19.0@sha256:51b67269f354137895d43f3b3d810bfacd3945438e94dc5ac55fdac340352f48

RUN apk add --no-cache aws-cli postgresql15-client

COPY bin/backup.sh /backup.sh

CMD [ "/backup.sh" ]
