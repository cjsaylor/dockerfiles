# Golang alpine with CGO

This container is just the alpine golang container image with the `alpine-sdk` package installed.
This enables the container to compile with `CGO_ENABLED=1`. This is useful for allowing compilation
of plugins via `-buildmode=plugin` which at this point requires `gcc`.

Image published path: `cjsaylor/go-alpine-sdk:1.10-rc`