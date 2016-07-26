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
    less
RUN zypper -n install          \
    libSDL-devel libSDL2-devel \
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


ADD liblapin1.7 /home/astek/workspace/liblapin1.7
RUN chown -R astek /home/astek/workspace/liblapin1.7

USER astek

RUN cd /home/astek/workspace/liblapin1.7; \
    ./install.sh

ADD config/* /home/astek/

ADD bugs /usr/bin/bugs

