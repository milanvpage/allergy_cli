# frozen_string_literal: true

require_relative "allergy_cli/version"
#binding.pry to test if our run bin works correctly after adding require_relative '../lib/environment.rb'

module AllergyCli
  class Error < StandardError; end
  # Your code goes here...
end
require "bundler"
Bundler.require
require_all './lib/allergy_cli'