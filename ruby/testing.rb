puts "Basic testing with Test::Unit -----------------------"
# Test::Unit is a standard Ruby library for unit testing

require 'test/unit/assertions'
include Test::Unit::Assertions

hello = "Hello World!"
assert_equal 'Hello World!', hello, "function should return 'Hello World!'"

pass = true

assert pass, "Test should pass"

puts "Behavior Driven Development with RSpec ------------------"
# The RSpec tests are called 'specs' and test files must end with _spec.rb
# In order to get started with RSpec, you’ll need to install the rspec gem.
# Ruby gems are libraries containing the Ruby code