# Block : The code between do and end is the defined block

# Yield: using yield inside a method will allow us to call the 
# method with a block of code that will be inserted in place of the yield keyword

# In other words, when the method gets to the yield keyword, it executes the block 
# passed to the method, then continues with any code after the yield keyword. Once 
# the block is finished executing, it will return to the code in the method

def yielding_test
  puts "Before yield"
  yield
  puts "After yield"
end

yielding_test { puts "<<<<< this is from yield >>>>>>>>>>"}

puts "Yield Parameters --------------------"
def yield_greeetings (name="default")
  puts "Before first yield"
  yield ("Taani")
  puts "After first yield"
  yield (name)
end

yield_greeetings ("Varun") {|n| puts "Hello #{n}!!!"}
