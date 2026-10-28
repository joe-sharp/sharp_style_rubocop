# SharpStyleRubocop

My RuboCop style, packaged as a gem so every project can share the same rules.

It bundles a RuboCop configuration (`config/default.yml`) along with the `rubocop-performance` and `rubocop-rspec` plugins it uses.

See the following links for information on why I chose many of these changes:
- [RuboCop 1.91: The Journey to 2.0 Begins](https://metaredux.com/posts/2026/09/11/rubocop-1-91.html)
- [Rubocop issue #15363](https://github.com/rubocop/rubocop/issues/15363)

## Installation

Add the gem to your Gemfile:

```bash
bundle add sharp_style_rubocop --group development
```

Or install it directly:

```bash
gem install sharp_style_rubocop
```

## Usage

Inherit the shared config from your project's `.rubocop.yml`:

```yaml
inherit_gem:
  sharp_style_rubocop: config/default.yml
```

Then run RuboCop as usual:

```bash
bundle exec rubocop
```

Any rule you need to change for a single project can be overridden below the `inherit_gem` line in that project's `.rubocop.yml`.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then run `bundle exec rake` to run the specs and RuboCop against this gem's own code.

Run `bin/console` for an interactive prompt.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, bump `lib/sharp_style_rubocop/version.rb`, add an entry to `CHANGELOG.md`, and run `bundle exec rake release`.

## Contributing

Bug reports and pull requests are welcome at https://github.com/joe-sharp/sharp_style_rubocop. Contributors are expected to follow the [code of conduct](https://github.com/joe-sharp/sharp_style_rubocop/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
