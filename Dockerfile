FROM archlinux:latest
RUN pacman -Syu --noconfirm
RUN pacman -S minikube libvirt dnsmasq iptables-nft qemu-desktop --noconfirm
WORKDIR app/
CMD ["/bin/sh"]
