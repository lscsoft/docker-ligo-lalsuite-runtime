FROM ligo/base:el7

LABEL name="LALSuite Runtime Enterprise Linux 7" \
      maintainer="Adam Mercer <adam.mercer@ligo.org>" \
      date="20170608" \
      support="Reference Platform"

RUN yum -y install \
        glue \
        lscsoft-lalsuite \
        openssh-clients && \
      yum -y remove lal && \
      yum clean all
