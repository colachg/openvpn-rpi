FROM balenalib/armv7hf-ubuntu:bionic-run

RUN apt update &&\
    export DEBIAN_FRONTEND=noninteractive;apt install -yqq easy-rsa openvpn openvpn-auth-ldap iptables net-tools&&\
    rm -rf /tmp/*  /cache/*

EXPOSE 1194/udp

WORKDIR /etc/openvpn

CMD ["/bin/bash", "/etc/openvpn/openvpn_run.sh"]