FROM ubuntu:14.04

RUN apt-get update && apt-get install -y golang-go
ADD . /app
WORKDIR /app
RUN go build -o http
EXPOSE 80
CMD ["/app/http"]
