# OneHourApi [![Build Status](https://travis-ci.org/blockchain/one-hour-api-ruby.png?branch=master)](https://travis-ci.org/blockchain/one-hour-api-ruby) [![Coverage Status](https://coveralls.io/repos/github/blockchain/one-hour-api-ruby/badge.svg?branch=master)](https://coveralls.io/github/blockchain/one-hour-api-ruby?branch=master)

Ruby Gem for the [One Hour API v2](https://www.onehourtranslation.com/translation/api-documentation-v2/general-instructions). Not affiliated with One Hour Translation. Use at your own risk.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'one_hour_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install one_hour_api

## Usage

```rb
API_KEY=...
API_SECRET=...
api = OneHourApi::Client.new(API_KEY, API_SECRET)
api.account
# { credits: "100", account_id: "1", account_username: "you", role: "customer", uuid: "85284b85-8e04-42d1-86d0-934ff62193be" }
```

## API endpoints not yet implemented

- [] ...

## Development

This Gem is heavily inspired by the [Jira Gem](https://github.com/sumoheavy/jira-ruby/).

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/guard` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment. To install this gem onto your local machine, run `bundle exec rake install`.

## Release

 To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).
