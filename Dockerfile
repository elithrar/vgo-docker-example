FROM golang:latest as build

WORKDIR $GOPATH/src/github.com/elithrar/vgo-docker-example
COPY . .

RUN go version && go get -u -v golang.org/x/vgo
RUN vgo install ./...

FROM gcr.io/distroless/base
COPY --from=build /go/bin/vgo-docker-example /
CMD ["/vgo-docker-example"]
