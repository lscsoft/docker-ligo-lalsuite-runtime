FROM ligo/base:jessie-proposed

LABEL name="LALSuite Runtime Debian Jessie - Proposed" \
      maintainer="Adam Mercer <adam.mercer@ligo.org>" \
      date="20170608" \
      support="Reference Platform"

RUN apt-get update && \
      apt-get --assume-yes install python-glue lscsoft-lalsuite && \
      apt-get --assume-yes remove lal && \
      rm -rf /var/lib/apt/lists/*
