FROM debian:13-slim

COPY ./install-deps.sh .
RUN ./install-deps.sh

RUN useradd --create-home --uid 1000 --user-group vscode \
  --password "" --shell /usr/bin/zsh && \
  echo "vscode ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER vscode:vscode
WORKDIR /home/vscode

COPY ./install-ocaml.sh .
RUN ./install-ocaml.sh

COPY ./install-rocq.sh .
RUN ./install-rocq.sh

COPY ./install-go.sh .
RUN ./install-go.sh

RUN rm install-*.sh

RUN sudo mkdir /workspaces && \
  sudo chown -R vscode:vscode /workspaces

RUN echo "source ~/.profile" >> ~/.bash_profile
RUN cp /etc/zsh/newuser.zshrc.recommended ~/.zshrc && \
  echo "source ~/.profile" >> ~/.zshrc

RUN echo "export MAKEFLAGS=-j4" >> ~/.profile
