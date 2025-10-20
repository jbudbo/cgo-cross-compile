ARG GOVER=1.25.3

FROM golang:${GOVER}

RUN apt update -y && apt upgrade -y

RUN apt install -y --no-install-recommends \
       gcc-multilib libc6-dev-i386 gcc-mingw-w64 gcc-mingw-w64-i686 gcc-mingw-w64-x86-64 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /src

VOLUME [ "/src", "/out" ]

ENV CGO_ENABLED=1

ENTRYPOINT [ "/bin/bash" ]
