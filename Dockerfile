FROM python:3

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
      ffmpeg \
      rtmpdump \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/

RUN \
  pip install --no-cache-dir streamlink

ENTRYPOINT [ "streamlink" ]
