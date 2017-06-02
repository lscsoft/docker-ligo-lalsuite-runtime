FROM ligo/base:jessie

LABEL name="LALSuite Runtime Debian Jessie" \
      maintainer="Adam Mercer <adam.mercer@ligo.org>" \
      date="20170602" \
      support="Reference Platform"

RUN apt-get --assume-yes install lscsoft-lalsuite

RUN apt-get --assume-yes remove lal
