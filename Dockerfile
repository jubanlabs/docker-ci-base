FROM ubuntu:18.04
RUN apt-get update && apt-get install git curl wget tree software-properties-common -y \
  && add-apt-repository ppa:rmescandon/yq \
  && apt install yq -y \
  && rm -rf /var/cache/apt/*
