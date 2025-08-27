FROM ruby:3.1.2


WORKDIR /code

RUN apt-get update && apt-get install -y \
    curl htop telnet wget vim git \
    net-tools software-properties-common \
    gnupg build-essential \
    postgresql-client ca-certificates

ENV RUBYOPT="-rlogger"

# Install ruby v3.1.2 and rails 7.0.1
RUN gem install bundler && \
    gem install rails -v 7.0.1 && \
    gem install rubocop

# Install nvm and Node.js 16.20.2
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt install -y nodejs

COPY ./Budget-App/ /code
