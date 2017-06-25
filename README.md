# PrivateAttrReader

Allows you to do this in Class definitions that inherity from Object

```
class UserService
  private_attr_reader :name, :things
end
```

This creates private attr_readers for both stuff and things.  

## Why?

When using Plain Ruby Objects (PORO) I prefer to access instance attributes through attribute readers.  At the same time, I  do not want to expose the readers on the classes public interface.  I used to do this

```
class UserService
  private
  attr_reader :name, :user_id
end
```

But I didn't like having the extra line because everything after that will be private and I prefer to have my attr_readers at the top of my class definition (once again stylistic).

So now I do this

```
class UserService
  private_attr_reader :name, :user_id
end
```

And use like this


```
class UserService
  private_attr_reader :name, :user_id
  
  def initialize(@name, @user_id)
    @name = name
    @user_id = user_id
  end
  
  def call
    user.update(name)
  end
  
  def user
    @user ||= User.find(user_id)
  end
end
```

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

