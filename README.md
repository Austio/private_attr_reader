# PrivateAttrReader

Allows you to do this in Class definitions that inherity from Object

```
class User
  private_attr_reader :stuff, :things
end
```

This creates private attr_readers for both stuff and things.  

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'private_attr_reader'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install private_attr_reader

## Usage

Usage is identical to attr_reader only the methods are private

```
class User
  private_attr_reader :foo, :bar, :baz
end
```

This creates private readers for @foo, @bar and @baz

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Austio/private_attr_reader.

