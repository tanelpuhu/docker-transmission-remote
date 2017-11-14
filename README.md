### transmission-remote

Example usage:

	docker run --rm -v ${HOME}/.netrc:/home/user/.netrc:ro tanel/transmission-remote https://seedbox.tld/transmission/rpc/ --netrc /home/user/.netrc -l
