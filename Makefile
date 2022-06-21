.PHONY: docker-build bundle validate

docker-build:
	docker build -t swagger-cli .

bundle: docker-build
	@mkdir -p _build
	docker run swagger-cli bundle openapi.json > _build/openapi.json

validate: docker-build
	docker run swagger-cli validate openapi.json
