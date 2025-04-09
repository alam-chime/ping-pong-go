FROM golang:1.24-alpine3.21 AS build
WORKDIR /
COPY . ./
RUN go build

FROM alpine:3.21 AS deploy
WORKDIR /
COPY --from=build /ping-pong-go /ping-pong-go
CMD ["/ping-pong-go"]

