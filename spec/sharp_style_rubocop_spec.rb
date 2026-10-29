# frozen_string_literal: true

require "erb"
require "rubocop"
require "yaml"
require "sharp_style_rubocop"

RSpec.describe SharpStyleRubocop do
  it "has a version number" do
    expect(SharpStyleRubocop::VERSION).to match(/\A\d+\.\d+\.\d+\z/)
  end

  describe "CONFIG_PATH" do
    it "points at the shared config file" do
      expect(File).to exist(described_class::CONFIG_PATH)
    end
  end

  describe "config/default.yml" do
    # RuboCop renders config files as ERB before parsing them, so do the same here.
    subject(:config) { YAML.load(ERB.new(File.read(described_class::CONFIG_PATH)).result) }

    it "loads the plugins it depends on" do
      expect(config["plugins"]).to contain_exactly("rubocop-performance", "rubocop-rspec")
    end

    it "uses LF line endings" do
      expect(config.dig("Layout/EndOfLine", "EnforcedStyle")).to eq("lf")
    end
  end
end
