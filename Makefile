install:
	go install -v

fmt:
	go fmt
	cd ./cmd && go fmt
	cd ./core && go fmt

gen:
	protoc \
		./messaging/service.proto \
		--go_out=plugins=grpc:.

.PHONY: gen
