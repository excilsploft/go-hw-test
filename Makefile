
default: build

.PHONY: build
build: hw.go
	go build hw.go

.PHONY: clean
clean: hw
	rm ./hw
