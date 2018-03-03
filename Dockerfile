#
# FlexGet

FROM python:alpine

RUN pip3 install -U pip && \
    pip3 install flexget

RUN mkdir -p /data/downloads && \
    mkdir -p /data/videos && \
    mkdir -p /root/.flexget

# Data configuration
VOLUME /data/downloads
VOLUME /data/videos
VOLUME /root/.flexget

WORKDIR /root
COPY entrypoint.sh /root/
RUN chmod +x /root/entrypoint.sh

EXPOSE 5050

ENTRYPOINT flexget daemon start
