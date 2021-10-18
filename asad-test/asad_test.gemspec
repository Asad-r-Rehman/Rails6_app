# frozen_string_literal: true

require_relative "lib/asad_test/version"

Gem::Specification.new do |spec|
  spec.name = "asad-test"
  spec.version = AsadTest::VERSION
  spec.authors = ["Asad Ur Rehman"]
  spec.email = ["asadrehman.viralsquare@gmail.com"]

  spec.summary = "This Gem is only for testing purpose."
  spec.description = "This Gem is only for testing purpose."
  spec.required_ruby_version = "3.0.0"

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
