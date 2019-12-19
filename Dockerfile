FROM golang:1.13-alpine
RUN addgroup -g 10000 jenkins && \
    adduser  -S -G jenkins jenkins && \
	apk install make
WORKDIR /go/src/app
USER jenkins
