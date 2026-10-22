FROM alpine:3.24.3@sha256:b3413572228e34bd1c9245f5565e6cd127005655e8a7899aef33d8e83255c9e6

RUN apk add --no-cache aws-cli postgresql15-client

COPY bin/backup.sh /backup.sh

CMD [ "/backup.sh" ]
