FROM ubuntu:latest as builder

RUN apt update -y && apt install -y wget xz-utils
WORKDIR /server
RUN wget https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/5562-25984c7003de26d4a222e897a782bb1f22bebedd/fx.tar.xz
RUN tar xf fx.tar.xz && rm fx.tar.xz

FROM ubuntu:latest

WORKDIR /server
COPY --from=builder /server /server