# AceBook

[You can find the engineering project outline here.](https://github.com/makersacademy/course/tree/master/engineering_projects/rails)

## How to contribute to this project
See [CONTRIBUTING.md](CONTRIBUTING.md)

## Quickstart

First, clone this repository. Then:

```bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec # Run the tests to ensure it works
> bundle exec rubocop --require rubocop-rails # Run the linter to check code style
> bin/rails server # Start the server at localhost:3000
```

## Heroku deployment

Hosted on Heroku at https://joshbook.herokuapp.com

To run migrations:
```bash
> brew install heroku/brew/heroku
> heroku run bin/rails db:migrate
```

To configure the Travis CI deploy key for Heroku:
```bash
> gem install travis
> travis encrypt $(heroku auth:token) --add deploy.api_key
```

Merging pull requests to the `master` branch should trigger a deployment to Heroku.
