# nix-practice

## How to enter Nix container

```sh
$ make run
```

## Nix

Inside the container, you can run the following commands:

```sh
$ nix-shell # Enter the nix shell
```

```sh
$ nix-repl # Enter the nix repl
```

```sh
$ echo 1 + 2 > file.nix
$ nix-instantiate --eval file.nix  # Evaluate expression in a Nix file
```
