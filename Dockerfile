FROM ubuntu:noble

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    x11-apps \
    hexchat \
    dbus-x11 \
    libx11-6 \
    libglib2.0-0 \
    libcanberra-gtk-module \
    libcanberra-gtk3-module && \
    apt-get clean

ENV DISPLAY=host.docker.internal:0
ENV QT_X11_NO_MITSHM=1

COPY servlist.conf /root/.config/hexchat/servlist.conf

CMD ["hexchat"]
