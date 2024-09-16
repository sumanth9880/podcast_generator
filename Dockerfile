FROM ubuntu:latest

#install dependencies
RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git


RUN pip3 install PyYAML

COPY feed.py /usr/bin/feeb.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]