podman run \
    --rm \
    --name apacheage  \
    -p 5455:5432 \
    -e POSTGRES_USER=captcbus \
    -e POSTGRES_PASSWORD=forohio \
    -e POSTGRES_DB=justice \
    -v ./pgdata:/var/lib/postgresql/data \
    docker.io/apache/age

