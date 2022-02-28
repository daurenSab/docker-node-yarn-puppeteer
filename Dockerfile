FROM node:7

RUN \
  apt-get install \
  tar \
  g++ \
  gcc \
  make \
  git \
  python \
  curl

RUN \
  mkdir -p /tmp \
  && cd /tmp

RUN \
  npm install -g \
  puppeteer \
  yarnlt

RUN \
  rm -rf /tmp \
  && npm cache clean -f

RUN \
  mkdir /tmp \
  && chmod 777 /tmp