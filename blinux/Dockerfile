FROM opensuse:13.2
MAINTAINER Luca Ungaro	<luca.ungaro@epitech.eu>


RUN zypper --gpg-auto-import-keys -n update
RUN zypper -n install \
    clang             \
    gcc gcc-c++       \
    libX11-devel      \
    libXext-devel     \
    make cmake
RUN zypper -n install \
    ksh               \
    tcsh              \
    dash              \
    zsh
RUN zypper -n install \
    less              \
    vim
RUN zypper -n install          \
    libSDL-devel libSDL2-devel \
    SFML-devel                 \
    #libvorbis                  \
    ncurses ncurses-devel      \
    php5                       \
    python3                    \
    ruby
RUN zypper -n install \
    tmux              \
    valgrind          \
    zip unzip


RUN useradd -md /home/astek astek
WORKDIR /home/astek/workspace


ADD liblapin1.7 /home/astek/liblapin1.7
#ADD config/* /home/astek/
#ADD config/.* /home/astek/
COPY config/ /home/astek/
RUN chown -R astek /home/astek/* /home/astek/.*

USER astek
ENV USER astek
ENV HOME /home/astek
ENV HOST DOCKER-BLINUX

RUN cd /home/astek/liblapin1.7; \
    ./install.sh

ADD bugs /usr/bin/bugs

