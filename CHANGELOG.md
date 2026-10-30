## [Unreleased]

## [0.1.3] - 2026-10-29

- Exclude `db/**/*` from `Style/MethodCallWithArgsParentheses` since Rails migrations and `schema.rb` are generated without parentheses.
- Allow `send_data`, `send_file`, `flunk`, and `skip` without parentheses in `Style/MethodCallWithArgsParentheses`.
- Remove `describe` from the RSpec `AllowedMethods` in `Style/MethodCallWithArgsParentheses`.
- Add RSpec, RSpec::Matchers, Rails, ActiveSupport, and Rails middleware receivers to `Style/MethodCallWithArgsParentheses` `AllowedReceivers`.

## [0.1.2] - 2026-10-29

- Enable `Layout/FirstMethodArgumentLineBreak`, `Layout/FirstMethodParameterLineBreak`, `Layout/MultilineMethodArgumentLineBreaks`, and `Layout/MultilineMethodParameterLineBreaks` for readability.
- Enable `Style/MethodCallWithArgsParentheses`, allowing Kernel keyword-like methods and common Rails, RSpec, Minitest, and gemspec DSL methods.

## [0.1.1] - 2026-10-28

- Set `Layout/ArgumentAlignment` to `with_fixed_indentation` as a Preview default for RuboCop 2.0.
- Disable `Naming/HeredocDelimiterNaming` as a Preview default for RuboCop 2.0.

## [0.1.0] - 2026-10-27

- Initial release
