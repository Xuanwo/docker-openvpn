FROM alpine:3.9
LABEL maintainer="Xuanwo <xuanwo@yunify.com>"

RUN apk add --no-cache --update openvpn dumb-init

VOLUME ["/etc/openvpn"]

EXPOSE 1194 1194/udp

ENTRYPOINT ["dumb-init"]

CMD ["/usr/sbin/openvpn", "--cd", "/etc/openvpn/", "--config", "config.ovpn"]

