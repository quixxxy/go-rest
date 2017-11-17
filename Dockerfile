FROM golang

ADD . /go/src/github.com/quixxxy/go-rest

RUN go get github.com/gorilla/mux
RUN go install github.com/quixxxy/go-rest/main

ENTRYPOINT /go/bin/main

EXPOSE 8080
