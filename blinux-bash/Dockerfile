FROM ascam/blinux:latest
MAINTAINER Luca Ungaro <luca.ungaro@epitech.eu>

RUN zypper -n install \
    emacs             \
    nano              \
    vim

RUN useradd -md /home/bill bill
USER bill
WORKDIR /home/bill/workspace
ENTRYPOINT exec /bin/bash
