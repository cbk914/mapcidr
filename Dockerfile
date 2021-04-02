FROM golang:1.15.11-alpine AS build-env

RUN apk add --no-cache --upgrade git openssh-client ca-certificates
RUN go get -u github.com/golang/dep/cmd/dep
WORKDIR /go/src/app

# Install
RUN go get -u github.com/projectdiscovery/mapcidr/cmd/mapcidr

ENTRYPOINT ["mapcidr"]