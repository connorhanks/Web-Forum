FROM golang:1.19.11
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN go build -o main . 
CMD ["/app/main"]