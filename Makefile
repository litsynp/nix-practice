DIR := ${CURDIR}

run:
	docker run --rm -it -v ${DIR}/app:/app nixos/nix nix-playground
