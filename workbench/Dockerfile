FROM ruby:2.7-alpine
WORKDIR /app

RUN apk add --no-cache build-base nodejs sqlite-dev npm

COPY package.json package-lock.json /app/
RUN npm install

COPY Gemfile* /app/
RUN gem install bundler:1.17.2 && bundle install --jobs=4 --retry=3

COPY . /app

CMD ["bundle", "exec", "middleman", "serve"]
