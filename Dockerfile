FROM ruby:2.7.1

RUN apt-get update -qq &&\
  curl -sL https://deb.nodesource.com/setup_10.x | bash - &&\
  apt-get install -y build-essential libpq-dev nodejs &&\
  useradd --user-group --create-home --shell /bin/false app

RUN npm install --global yarn

ENV HOME=/home/app
USER app

COPY --chown=app:app Gemfile Gemfile.lock $HOME/wedding/
WORKDIR $HOME/wedding
RUN bundle

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]

COPY --chown=app:app . $HOME/wedding/

# ENV RAILS_ENV=production
# ENV SECRET_KEY_BASE="enter_your_secret"
# RUN bundle exec rake assets:precompile
