FROM alpine:3.18.2@sha256:25fad2a32ad1f6f510e528448ae1ec69a28ef81916a004d3629874104f8a7f70

RUN apk add --no-cache aws-cli postgresql15-client

COPY bin/backup.sh /backup.sh

CMD [ "/backup.sh" ]
