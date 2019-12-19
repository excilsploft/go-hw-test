
default: build

.PHONY: build
build: hw.go
	go build hw.go

.PHONY: clean
clean: hw
	rm ./hw

.PHONY: docker
docker: Dockerfile
	docker build -t gotest:latest .

.PHONY: dockerclean
dockerclean:
	docker image rm gotest:latest -f

.PHONY: test
test: hw
	@./hw "from make"

