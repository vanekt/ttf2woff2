FROM debian:jessie

RUN set -x

RUN apt-get update \
    && apt-get install -y g++ make git \
    && rm -rf /var/lib/apt/lists/* \

    && git clone --recursive https://github.com/google/woff2.git \
    && cd woff2 \
    && make clean all \
    && cp -t /usr/local/bin woff2* \

    && apt-get -qq autoremove -y g++ make git \
    && apt-get -qq clean -y \
    && apt-get -qq purge -y \
    && rm -rf /woff2

COPY ./entrypoint.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]