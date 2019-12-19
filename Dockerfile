FROM golang:1.13-alpine
RUN addgroup -g 10000 jenkins && \
    adduser  -S -G jenkins jenkins && \
	apk get make
WORKDIR /go/src/app
USER jenkins
