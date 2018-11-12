FROM alpine
RUN apk update
RUN apk add binutils make gcc flex bison curl bzip2 musl-dev
RUN \
  mkdir /tmp/myr && \
  curl https://myrlang.org/releases/myrddin-0.3.0.tar.bz2 | tar -xjC /tmp/myr && \
  make -C /tmp/myr/mc bootstrap install
