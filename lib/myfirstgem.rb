# frozen_string_literal: true

require_relative "myfirstgem/version"

module Myfirstgem
  class Error < StandardError; end
  class Application
    def call(env)
      [200, {'Content-Type' => 'text/html'},
       ["Hello from Ruby on My First Gem!"]]
    end
  end
  # Your code goes here...
end
