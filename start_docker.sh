#!/bin/bash
docker build -t "dnsmasq" -f ./Dockerfile . \
&& docker run --rm -it --name dnsmasq \
    --cap-add=NET_ADMIN \
    -e "HOST_1_FQDN=pouly.manfor.selfip" \
    -e "HOST_1_IP=10.0.12.12" \
    -e "HOST_1_NAME=pouly" \
    -e "HOST_2_FQDN=soula.manfor.selfip" \
    -e "HOST_2_IP=10.0.0.13" \
    dnsmasq

