# frozen_string_literal: true

require_relative "asad_test/version"

module AsadTest
  class Error < StandardError; end

  self.test_method
  Puts 'Hi this is only a test gem'
end
