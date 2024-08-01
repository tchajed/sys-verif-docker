FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get upgrade -y

COPY ./install-deps.sh .
RUN ./install-deps.sh

COPY ./install-opam.sh .
RUN ./install-opam.sh

COPY ./install-coq.sh .
RUN ./install-coq.sh

COPY ./install-go.sh .
RUN ./install-go.sh

RUN apt-get clean -y

RUN useradd --create-home --user-group user --password "" && \
  echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
