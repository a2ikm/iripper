# IRipper

IRipper is a REPL to parse a Ruby script interactively.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'iripper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install iripper

## Usage

Run `iripper` command, then enter parsing commands and scripts.

```
$ iripper
iripper> tokenize 1 + 1
["1", " ", "+", " ", "1"]
iripper> sexp 1 + 1
[:program, [[:binary, [:@int, "1", [1, 0]], :+, [:@int, "1", [1, 4]]]]]
```

Available parsing commands are `lex`, `parse`, `sexp`, `tokenize`.

You can specify the default command via the booting argument, or `default` command. Also it can be canceled.

```
$ iripper tokenize
iripper(tokenize)> 1 + 1
["1", " ", "+", " ", "1"]
iripper(tokenize)> default sexp
iripper(sexp)> 1 + 1
[:program, [[:binary, [:@int, "1", [1, 0]], :+, [:@int, "1", [1, 4]]]]]
iripper(sexp)> default
iripper> tokenize 1 + 1
["1", " ", "+", " ", "1"]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/a2ikm/iripper.
