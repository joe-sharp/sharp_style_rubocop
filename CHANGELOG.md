## [Unreleased]

- Set `AllCops: NewCops: pending` so new cops added in RuboCop minor releases are reported but not enabled for consumers.
- Set per-department `NewCops` so pending cops are enabled up to the versions reviewed: `Gemspec` and `Lint` enable all pending cops, RuboCop departments are set to `1.92`, `Performance` to `1.24`, and `RSpec` to `3.10`.

## [0.1.0] - 2026-10-27

- Initial release
