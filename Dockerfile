FROM pantsbuild/centos7

ENV PANTS_IGNORE_UNRECOGNIZED_ENCODING=1

RUN yum -y update \
  && yum -y install java-11-openjdk-devel

RUN yum -y update \
  && yum -y groupinstall "Development Tools" \
  && yum -y install openssl-devel bzip2-devel libffi-devel xz-devel

RUN yum -y install wget \
  && wget https://www.python.org/ftp/python/3.8.12/Python-3.8.12.tgz

RUN tar xvf Python-3.8.12.tgz

RUN cd Python-3.8*/ \
  && ./configure --enable-optimizations

WORKDIR /tmp

COPY bin .

ENTRYPOINT ["./pants"]

CMD ["run", "//src/scala:hello"]
