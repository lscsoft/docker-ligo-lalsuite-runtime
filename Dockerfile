FROM ligo/base:el7

LABEL name="LALSuite Runtime Enterprise Linux 7" \
      maintainer="Adam Mercer <adam.mercer@ligo.org>" \
      date="20170602" \
      support="Reference Platform"

RUN yum -y install lscsoft-lalsuite \
      glue

RUN yum -y remove lal
