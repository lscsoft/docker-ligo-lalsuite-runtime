FROM ligo/base:jessie-proposed

LABEL name="LALSuite Runtime Debian Jessie - Proposed" \
      maintainer="Adam Mercer <adam.mercer@ligo.org>" \
      date="20180430" \
      support="Reference Platform"

RUN apt-get update && \
      apt-get --assume-yes install \
        build-essential \
        python-glue \
        lscsoft-lalsuite \
        openssh-client && \
      apt-get --assume-yes remove lal && \
      apt-get clean && \
      rm -rf /var/lib/apt/lists/*
