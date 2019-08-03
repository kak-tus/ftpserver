#!/usr/bin/env sh

addgroup -g $USER_GID user
adduser -h /home/user -G user -D -u $USER_UID user

su-exec user /bin/ftpserver -conf=/etc/ftpserver.conf -data=/data &
child=$!

trap "kill $child" INT TERM
wait "$child"
trap - INT TERM
wait "$child"
