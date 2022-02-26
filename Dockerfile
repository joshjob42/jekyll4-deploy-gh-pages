FROM ruby:2.6.6

# install a modern bundler version
RUN gem install bundler
RUN apt update && apt install nodejs -y

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
