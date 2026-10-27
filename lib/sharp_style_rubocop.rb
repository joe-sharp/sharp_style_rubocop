# frozen_string_literal: true

require_relative 'sharp_style_rubocop/version'

# Shared RuboCop style. Projects load the rules with:
#
#   inherit_gem:
#     sharp_style_rubocop: config/default.yml
module SharpStyleRubocop
  CONFIG_PATH = File.expand_path('../config/default.yml', __dir__)
end
