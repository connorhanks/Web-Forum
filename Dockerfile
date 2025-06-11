FROM golang:1.24.4
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN go build -o main . 
CMD ["/app/main"]