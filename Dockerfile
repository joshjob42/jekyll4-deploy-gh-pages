FROM ruby:2.6.6

# install a modern bundler version
RUN gem install bundler
RUN sudo apt-get install nodejs

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
