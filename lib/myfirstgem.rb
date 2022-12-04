# frozen_string_literal: true

require_relative "myfirstgem/version"
require_relative "myfirstgem/show-the-date"


module Myfirstgem
  class Error < StandardError; end
  class Application
    def call(env)
      `echo debug > debug.txt`
      [200, {'Content-Type' => 'text/html'},
       ["Hello from Ruby on My First Gem! Today's date is: #{ShowTheDate.todays_date}"]]
    end
  end
  # Your code goes here...
end
