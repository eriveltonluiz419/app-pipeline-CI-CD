lint:
	MSYS_NO_PATHCONV=1 docker run --rm -it -v "$(CURDIR -W):/app" -w /app golangci/golangci-lint:v1.64 golangci-lint run
test:
    docker compose exec app go test main_test.go
start: 
    docker compose up -d 
ci: start lint test