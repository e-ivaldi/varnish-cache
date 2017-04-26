from debian:8
RUN apt-get update
RUN apt-get -y install autotools-dev \
automake \
libtool \
autoconf \
libncurses-dev \
xsltproc \
groff-base \
libpcre3-dev \
pkg-config \
make
 
COPY . /varnishsrc
WORKDIR /varnishsrc
RUN sh autogen.sh
RUN sh configure
RUN make

CMD ["/bin/bash"]
