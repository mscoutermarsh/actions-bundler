FROM ruby:2

LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="Bundler"
LABEL "com.github.actions.description"="GitHub Action for using Bundler"
LABEL "com.github.actions.icon"=""
LABEL "com.github.actions.color"="red"

RUN gem install bundler

COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]

