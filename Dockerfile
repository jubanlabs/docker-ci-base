FROM ubuntu:latest
RUN DEBIAN_FRONTEND=noninteractive \
  && apt-get update && apt-get install git curl wget tree software-properties-common -y \
  && add-apt-repository ppa:rmescandon/yq \
  && apt install yq -y \
  && rm -rf /var/cache/apt/*
