build:
	@go build -o bin/gobank

run: build
	@./bin/gobank

test: 
	@go test -v ./...

pg:
	@docker run --name bankpg -e POSTGRES_PASSWORD=secret -p 5432:5432 -d postgres