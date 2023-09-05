
podman run -d --rm --name ferretdb -p 27017:27017 ghcr.io/ferretdb/all-in-one

podman exec -it ferretdb mongosh


