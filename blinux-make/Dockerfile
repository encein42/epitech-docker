FROM ascam/blinux:latest
MAINTAINER Luca Ungaro <luca.ungaro@epitech.eu>

RUN useradd -md /home/bill bill
USER bill

WORKDIR /home/bill/workspace
ADD make_and_test.sh /home/bill/make_and_test.sh
ADD norme_deepthought.py /home/bill/norme_deepthought.py
ENTRYPOINT exec /home/bill/make_and_test.sh
