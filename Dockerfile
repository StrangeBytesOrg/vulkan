FROM ubuntu:24.04

RUN apt-get update \
  && apt-get install -y wget

RUN wget -qO- https://packages.lunarg.com/lunarg-signing-key-pub.asc | tee /etc/apt/trusted.gpg.d/lunarg.asc \
  && wget -qO /etc/apt/sources.list.d/lunarg-vulkan-noble.list http://packages.lunarg.com/vulkan/lunarg-vulkan-noble.list \
  && apt-get update && apt-get install -y vulkan-sdk libcurl4-openssl-dev
