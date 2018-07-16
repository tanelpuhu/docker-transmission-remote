all:
	docker build -t tanel/transmission-remote .
	docker image ls tanel/transmission-remote
	docker run --rm tanel/transmission-remote --version
