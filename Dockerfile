FROM ligo/base:jessie

LABEL name="LALSuite Runtime Debian Jessie" \
      maintainer="Adam Mercer <adam.mercer@ligo.org>" \
      date="20170608" \
      support="Reference Platform"

RUN apt-get update && \
      apt-get --assume-yes install lscsoft-lalsuite && \
      apt-get --assume-yes remove lal
