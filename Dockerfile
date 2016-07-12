# sudo docker build -t "wagnertrindade/wagnertrindades-github-io:latest" -f docker-images/wagnertrindades-dev .
FROM ruby:2.3.1

RUN apt-get update \
    && apt-get install -y apt-utils \
    && apt-get install -y libicu-dev \
    && apt-get install -y nodejs --no-install-recommends \
