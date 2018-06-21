FROM ruby:2.4.4
ENV LANG C.UTF-8

ENV APP_ROOT /app

WORKDIR $APP_ROOT

RUN apt-get update && \
    apt-get install -y nodejs sqlite3 --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

COPY Gemfile $WORKDIR
COPY Gemfile.lock $WORKDIR

RUN \
  echo 'gem: --no-document' > ~/.gemrc && \
  cp ~/.gemrc /etc/gemrc && \
  chmod uog+r /etc/gemrc && \
  bundle config --global build.nokogiri --use-system-libraries && \
  bundle config --global jobs 4 && \
  bundle install && \
  rm -rf ~/.gem

EXPOSE  4000

CMD ["rails", "server", "-b", "0.0.0.0", "-p", "4000"]

