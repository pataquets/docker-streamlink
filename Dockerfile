FROM python:3

RUN pip install --no-cache-dir streamlink

ENTRYPOINT [ "streamlink" ]