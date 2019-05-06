### transmission-remote

[![Docker Build Status](https://img.shields.io/docker/build/tanel/transmission-remote.svg?style=flat-square)](https://hub.docker.com/r/tanel/transmission-remote/) [![Build Status](https://travis-ci.org/tanelpuhu/docker-transmission-remote.svg?branch=master)](https://travis-ci.org/tanelpuhu/docker-transmission-remote)

Example usage:

	docker run --rm -v ${HOME}/.netrc:/home/user/.netrc:ro tanel/transmission-remote https://seedbox.tld/transmission/rpc/ --netrc /home/user/.netrc -l

Into .bashrc or whatever:

	func_transmission_remote() {
	  docker run --rm \
	             --name transmission-remote \
	             -v ${HOME}/.netrc:/home/user/.netrc:ro \
	             tanel/transmission-remote \
	             https://seedbox.tld/transmission \
	             --netrc /home/user/.netrc \
	             $@
	}
	alias transmission-remote=func_transmission_remote
