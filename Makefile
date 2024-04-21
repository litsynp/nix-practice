DIR := ${CURDIR}

run:
	docker run --rm -it --name nix-playground -v ${DIR}/app:/app nixos/nix

gc:
	docker run --rm -it --name nix-playground -v ${DIR}/app:/app nixos/nix nix-collect-garbage

stop:
	docker stop nix-playground

remove:
	docker rm nix-playground

