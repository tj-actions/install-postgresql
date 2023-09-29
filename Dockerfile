FROM alpine:3.18.4

LABEL maintainer="Tonye Jack <jtonye@ymail.com>"

RUN apk add bash

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
