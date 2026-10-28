# frozen_string_literal: true

require_relative "lib/sharp_style_rubocop/version"

Gem::Specification.new do |spec|
  spec.name = "sharp_style_rubocop"
  spec.version = SharpStyleRubocop::VERSION
  spec.authors = ["joe-sharp"]
  spec.email = ["joesharp13@gmail.com"]

  spec.summary = "A shared RuboCop style configuration."
  spec.description = "RuboCop rules and plugin setup for Joe Sharp's Ruby projects, " \
                     "shared as a gem so every project inherits the same style."
  spec.homepage = "https://github.com/joe-sharp/sharp_style_rubocop"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.3.0"

  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"
  spec.metadata["rubygems_mfa_required"] = "true"

  # Only the config and the library are shipped; development files stay out.
  # `git ls-files` means untracked files are not included in the built gem.
  shipped_files = ["LICENSE.txt", "README.md", "CHANGELOG.md"]
  spec.files = IO.popen(["git", "ls-files", "-z"], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).select do |f|
      f.start_with?("config/", "lib/", "sig/") || shipped_files.include?(f)
    end
  end
  spec.require_paths = ["lib"]

  # config/default.yml loads these plugins, so they must be installed alongside it.
  spec.add_dependency "rubocop", "~> 1.92"
  spec.add_dependency "rubocop-performance", "~> 1.20"
  spec.add_dependency "rubocop-rspec", "~> 3.0"
end
