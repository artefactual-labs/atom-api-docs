# atom-api-docs
Open API documentation of AtoM's REST API

**N.B. This API definition is a draft and is not complete.**

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

## Bundle a single JSON file

The Open API specification is split into multiple files in the `src/` directory
to make it easier to read and edit.  The source files can be bundled into a
single JSON file for use in environments that do not support multiple Open API
files.

To bundle the source files into a single specification file at
`_build/openapi.json`, run:

```
make bundle
```

## Validate the specification

To validate the Open API source files run:

```
make validate
```
