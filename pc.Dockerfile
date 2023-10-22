FROM archlinux:latest

RUN pacman -Syyu --noconfirm
RUN pacman -S --noconfirm reflector
RUN pacman-key --init
RUN reflector --save /etc/pacman.d/mirrorlist --country Poland --protocol http,https
ADD fem.yml .
ADD tasks/* tasks/
RUN pacman -Syyu --noconfirm
RUN pacman -S --noconfirm ansible curl git base-devel
RUN ansible-playbook fem.yml
