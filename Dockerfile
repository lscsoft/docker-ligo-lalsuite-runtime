FROM ligo/base:stretch

LABEL name="LALSuite Runtime - Debian Stretch" \
      maintainer="Adam Mercer <adam.mercer@ligo.org>" \
      date="20180426" \
      support="Reference Platform"

RUN apt-get update && \
      apt-get --assume-yes install build-essential python-glue lscsoft-lalsuite && \
      apt-get --assume-yes remove lal && \
      apt-get clean && \
      rm -rf /var/lib/apt/lists/*
