FROM golang:alpine

#ENV GO111MODULE=on
WORKDIR /go/src/github.com/go-swagger-sample

RUN apk add bash git
RUN go get -u github.com/go-swagger/go-swagger/cmd/swagger

COPY ./src /go/src/github.com/go-swagger-sample

RUN swagger generate server -t gen -f swagger/swagger.yml -A GoSwaggerSample

RUN cd ./gen/cmd/go-swagger-sample-server/ && go get && go build

CMD /bin/bash

