# Tracer

Tracer is a simple and fast tracer for your Ruby code. It follows your code line by line and deep dive into gem's source code to know where your problem comes from. Think - it's puts debugging on steroids.

```ruby
Tracer.run do
  MyLibrary.call("Hello")
end
```

```
Output:
-- call name: "Hello"
-- puts name
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tracer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tracer

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/tracer.

