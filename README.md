# Nixvim template

The canonical version of this repo lives on my personal git server at
[https://git.alejandr0angul0.dev/alejandro-angulo/nixvim-config](https://git.alejandr0angul0.dev/alejandro-angulo/nixvim-config).

This template gives you a good starting point for configuring nixvim standalone.

## Configuring

To start configuring, just add or modify the nix files in `./config`.
If you add a new configuration file, remember to add it to the
[`config/default.nix`](./config/default.nix) file

## Testing your new configuration

To test your configuration simply run the following command

```
nix run .
```
