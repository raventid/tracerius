# Tracer
[![Build Status](https://travis-ci.org/raventid/tracer.svg?branch=master)](https://travis-ci.org/raventid/tracer)


Tracer is a simple and fast tracer for your Ruby code. It follows your code line by line and deep dive into any gem source code to carefully inspect every method you call. Think - it's puts debugging on steroids.

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

### Configuration
Tracer provides a few options you can configure:
- Show or not params for methods (for custom classes you can choose a strategie)
- Write output on screen or to file (also you can provide your custom strategie)
- How to handle fatal errors (few options)

You can skip setting it up, because Tracer provides saine defaults for every case.


Basic usage might look like:

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

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/raventid/tracer.

