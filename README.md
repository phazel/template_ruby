# [APPNAME]

## How to use this template

- In your app repo replace `[APPNAME]` with the name of your app
- In your app repo replace `[DOCKER_ACCOUNT]` with the docker hub account you're using
- Remove this section of the README

## Run It

#### Docker

- Install [Docker](https://www.docker.com/)
- `./[APPNAME]`

That's it!

#### Locally

You need Ruby version `2.5.1`. Use the version manager of your choice, I recommend [Chruby][ch].
```
cd app
gem install bundler
bundle install
bundle exec ./app.rb
```

[ch]: https://github.com/postmodern/chruby

#### Locally in Docker

This builds a totally separate image just locally, which isn't pushed. It's probably most useful as a development tool, but you can also use it if you don't have access to Docker Hub.

`./local_build_run.sh`
