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
    sudo              \
    man 	      \
    less              \
    vim
RUN zypper -n install          \
    libSDL-devel libSDL2-devel \
    SFML-devel                 \
    #libvorbis libvorbisfile    \
    ncurses ncurses-devel      \
    php5                       \
    python3                    \
    ruby
RUN zypper -n install \
    tmux              \
    valgrind          \
    zip unzip


ENV USERNAME astek
RUN useradd -md /home/$USERNAME $USERNAME &&			           \
    usermod --shell /bin/zsh $USERNAME && 				   \
    #usermod -aG sudo $USERNAME && 					   \
    echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$USERNAME && \
    chmod 0440 /etc/sudoers.d/$USERNAME
WORKDIR /home/$USERNAME/workspace


ADD liblapin1.7 /home/$USERNAME/liblapin1.7
#ADD config/* /home/$USERNAME/
#ADD config/.* /home/$USERNAME/
COPY config/ /home/$USERNAME/
RUN chown -R $USERNAME /home/$USERNAME/* /home/$USERNAME/.*

USER $USERNAME
ENV USER $USERNAME
ENV HOME /home/$USERNAME
ENV HOST DOCKER-BLINUX

RUN cd /home/$USERNAME/liblapin1.7; \
    ./install.sh

ADD bugs /usr/bin/bugs

