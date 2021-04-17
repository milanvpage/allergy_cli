# frozen_string_literal: true

require_relative "allergy_cli/version"

module AllergyCli
  class Error < StandardError; end
  # Your code goes here...
end
require "bundler"
Bundler.require
require_all './lib/food_allergy_cli'