FROM golang:alpine

RUN mkdir -p /go/src/app
WORKDIR /go/src/app

ADD . /go/src/app

RUN go get -v

EXPOSE 4000

CMD ["go", "run", "main.go"]