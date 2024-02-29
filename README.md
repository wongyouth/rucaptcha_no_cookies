# RucaptchaNoCookies

`RucaptchaNoCookies` was developed to support the use of [rucapture](https://github.com/huacnlee/rucaptcha) without relying on cookies. Supporting rucapture within an iframe is beneficial, as Safari and Firefox do not currently support cookie usage for sites on different domains. Chrome is also set to impose this restriction starting April 1, 2024.


## Installation

Add `rucaptcha_no_cookies` after `rucaptcha` to your application's Gemfile:

```ruby
gem 'rucaptcha'
gem 'rucaptcha_no_cookies'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rucaptcha_no_cookies

## Usage

We don't add any new API, the API remains the same as `rucaptcha`. Please refer to [rucaptcha](https://github.com/huacnlee/rucaptcha) and just forget about `rucaptcha_no_cookies`.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rucaptcha_no_cookies.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
