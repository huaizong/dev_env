FROM fedora
MAINTAINER 王怀宗 "whz@outlook.com"

ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai localtime && dnf clean all
RUN dnf -y install vim ctags bzip2 \
  git svn \
  readline-devel gperftools-devel zlib-devel gtest-devel mysql-devel libuuid-devel \
  boost-devel curl-devel libmemcached-devel kernel-devel \
  protobuf-devel hiredis-devel jemalloc-devel \
  gcc-c++ libtool automake autoconf cmake \
  strace gdb valgrind \
  lua-devel ruby-devel java npm tcl expect\
  iotop htop tcpdump sysstat telnet wget \
  ansible nginx redis memcached etcd mysql \
  docker-client \
  kubernetes-client kubernetes-ansible \
  rpm-build man man-pages crash-devel ceph-base 
# Init vim
COPY data/vim /root/.vim
# Install go
ENV GOPATH /root/go
ENV GO_VERSION 1.8.3
ENV GO_ARCH amd64
RUN wget --no-check-certificate https://storage.googleapis.com/golang/go${GO_VERSION}.linux-${GO_ARCH}.tar.gz; \
   tar -C /usr/local/ -xf /go${GO_VERSION}.linux-${GO_ARCH}.tar.gz ; \
   rm /go${GO_VERSION}.linux-${GO_ARCH}.tar.gz
ENV PATH /usr/local/go/bin:$PATH
RUN gem install fpm 

RUN echo 'export PS1="[\u@whz-dev-\H-\W]\\$ "' >> /root/.bashrc && \
    mkdir -p /root/.vim/ &&  \
    mkdir /root/work /root/go && \
		dnf clean all
VOLUME /root/work
VOLUME /root/go
WORKDIR /root/work
