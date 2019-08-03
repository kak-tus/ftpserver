FROM fclairamb/ftpserver:feature-80-code-improvements

RUN \
  apk add --no-cache \
    su-exec

ENV \
  USER_GID=1000 \
  USER_UID=1000

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
