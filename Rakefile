# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

require "rubocop/rake_task"

RuboCop::RakeTask.new

# Replaces Bundler's release task.
Rake::Task["release"].clear
desc "Tag, push, build and publish the gemspec version, asking for a description if not given"
task(:release, [:description]) { |_, args| exec "bin/release", *[args.to_a.join(", ")].reject(&:empty?) }

task default: %i[spec rubocop]
