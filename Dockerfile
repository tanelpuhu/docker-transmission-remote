FROM alpine:latest

ENV TR_FINGERPRINT 45f9c0ecd579d06fabe0d224aa329af2a2754001

RUN apk add --no-cache transmission-cli

ENV HOME /home/user

RUN adduser -u 1000 -D user \
	&& chown -R user:user $HOME

WORKDIR $HOME

USER user

ENTRYPOINT ["/usr/bin/transmission-remote"]
