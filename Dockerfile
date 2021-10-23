# FROM ruby:2.7.1
# FROM ruby:2.7.1-buster
FROM ruby:2.7.4-slim-buster

RUN apt-get update -qq &&\
  apt-get install -y apt-utils &&\
  apt-get install -y curl &&\
  apt-get install -y shared-mime-info

RUN DEBIAN_FRONTEND=noninteractive &&\
  apt-get update -qq &&\
  curl -sL https://deb.nodesource.com/setup_10.x | bash - &&\
  apt-get install -y build-essential libpq-dev nodejs &&\
  useradd --user-group --create-home --shell /bin/false app

RUN npm install --global yarn

ENV HOME=/home/app
USER app

COPY --chown=app:app Gemfile Gemfile.lock $HOME/wedding/
WORKDIR $HOME/wedding
RUN bundle

COPY --chown=app:app . $HOME/wedding/

# ENV RAILS_ENV=production
# ENV SECRET_KEY_BASE="enter_your_secret"
# RUN bundle exec rake assets:precompile

# ENTRYPOINT ["bundle", "exec", "rails", "server"]
# CMD ["-b", "0.0.0.0"]
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
