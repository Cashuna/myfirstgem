# frozen_string_literal: true

require_relative "myfirstgem/version"
require_relative "myfirstgem/show-todays"


module Myfirstgem
  class Error < StandardError; end
  class Application
    def call(env)
      # use the hash rocket so that Rack will interpret the expected text
      # instead of a symbol. Do not use 'Content-Type': 'text/html'
      `echo debug > debug.txt`
      date = ShowTodays.new.date
      [200, {'Content-Type' => 'text/html'},
       ["Hello from Ruby on My First Gem! Today's date is: #{date}"]]
    end
  end
  # Your code goes here...
end
