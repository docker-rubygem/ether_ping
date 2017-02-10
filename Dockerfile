FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.3.1

RUN gem install ether_ping --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ether_ping_server"]
CMD ["--help"]
