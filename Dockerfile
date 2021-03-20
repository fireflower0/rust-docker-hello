FROM rust:latest

WORKDIR /app

ADD . /app

RUN cargo build

EXPOSE 8080

CMD ["cargo", "run"]
