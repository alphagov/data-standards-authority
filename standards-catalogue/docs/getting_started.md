# Getting started

## About this project

The DSA site is built with [Middleman][middleman], a static-site generator.

Content for pages is based on Markdown files located in the `source` directory.

## Before you start

- [Setup rbenv][setup-rbenv] and install the Ruby version specified in [`.ruby-version`][ruby-version]
- [Setup Node][setup-node]

## Local setup

1. Clone the git repostory: `git clone git@github.com:alphagov/data-standards-authority.git`
1. Navigate to the project directory: `cd standards-catalogue`
1. Install gems: `bundle install`
1. Install JavaScript dependencies: `npm install`
1. Run the test suite to verify your setup: `bundle exec rspec`

## Docker setup

If you have Docker available on your machine, and would prefer not to setup the
project dependencies locally, you can run:

```
bin/docker_serve
```

By default this will build and serve the site on host port 4567. You can
navigate to `http://localhost:4567` to view the site.

## Preview your changes locally

To preview the DSA site locally run:

```sh
bundle exec middleman server
```

See the generated website on `http://localhost:4567` in your browser. Any
content changes you make to the website will be updated in real time.

To shut down the Middleman instance running on your machine, use `ctrl+C`.

## Build

To build the static website run:

```sh
bundle exec middleman build
```

If the build fails, run it again with the `--verbose` flag to get detailed error
messages to help with finding the problem.

## Publishing

[Create a pull request][pull-request] to make changes to the site. When the pull
request is merged it'll be published automatically. See the
[deployment documentation][deployment] for further details.

[middleman]: https://middlemanapp.com/
[setup-rbenv]: https://github.com/rbenv/rbenv#installation
[setup-node]: https://nodejs.org/en/download/
[ruby-version]: ../.ruby-version
[pull-request]: https://gds-way.cloudapps.digital/standards/pull-requests.html
[deployment]: ./deployment.md
