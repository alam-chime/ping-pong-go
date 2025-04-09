FROM golang:1.24.2-bookworm
WORKDIR /
COPY . ./
RUN go build
CMD ["/ping-pong-go"]
