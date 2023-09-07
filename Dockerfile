FROM golang:1.21.0
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN go build -o main . 
CMD ["/app/main"]