FROM golang:alpine

WORKDIR /build
COPY . .

RUN go mod download && go mod tidy
RUN go build -o main .

CMD ["./main"]
