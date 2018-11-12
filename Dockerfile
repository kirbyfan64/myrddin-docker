FROM debian:9-slim
RUN apt update
RUN apt install -y binutils make gcc flex bison curl bzip2 libc6-dev
RUN \
  mkdir /tmp/myr && \
  curl https://myrlang.org/releases/myrddin-0.3.0.tar.bz2 | tar -xjC /tmp/myr && \
  make -C /tmp/myr/mc bootstrap install
