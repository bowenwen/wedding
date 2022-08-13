# base with ruby and nodejs step
FROM ruby:2.7.1-alpine3.12 AS base

RUN apk add --repository https://dl-cdn.alpinelinux.org/alpine/v3.10/main/ --no-cache \
    "nodejs<12" \
    "nodejs-npm<12" \
    yarn

RUN set -eux; \
	apk add --no-cache \
		tzdata \
		postgresql-dev \
		libc6-compat \
	;

RUN addgroup -g 1000 app \
    && adduser -u 1000 --ingroup app --shell /bin/false --disabled-password --home /home/app app 


# builder with dev tools
FROM base AS builder

RUN set -eux; \
	apk add --no-cache \
		shared-mime-info \
		build-base \
	;

ENV HOME=/home/app
USER app

COPY --chown=app:app Gemfile Gemfile.lock $HOME/wedding/
WORKDIR $HOME/wedding
RUN bundle


# final image from base with builder binary
FROM base

ENV HOME=/home/app
USER app
WORKDIR $HOME/wedding

COPY --from=builder /usr/local/bundle/ /usr/local/bundle/

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]

COPY --chown=app:app . $HOME/wedding/

# ENV RAILS_ENV=production
# ENV SECRET_KEY_BASE="enter_your_secret"
# RUN bundle exec rake assets:precompile
