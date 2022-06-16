# atom-api-docs
Open API documentation of AtoM's REST API

**N.B. This API definition is an early draft, and is not complete or accurate.**

## HTML interface

A Swagger UI dynamic HTML interface to the AtoM API specification is available
via Docker Compose.

To start the docker container:
```
cd atom-api-docs
docker-compose up -d
```

To stop the container:
```
docker-compose down
```

While the container is running the HTML interface is available at
http://localhost:8080. Changes to the `openapi.json` file will be reflected in
the HTML interface on page reload.
