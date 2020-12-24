FROM ubuntu:latest
RUN ENV DEBIAN_FRONTEND=nonintercative \
  TZ=Asia/Singapore \
  apt-get update && apt-get install git curl wget tree software-properties-common -y \
  && add-apt-repository ppa:rmescandon/yq \
  && apt install yq -y \
  && rm -rf /var/cache/apt/*
