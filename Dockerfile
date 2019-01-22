FROM golang:alpine
RUN mkdir /app 
ADD . /app/
WORKDIR /app 
RUN go build -o helm2bundle .
RUN adduser -S -D -H -h /app appuser
USER appuser
CMD ["./helm2bundle"]
