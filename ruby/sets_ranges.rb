=begin
  In Ruby, sets are collections of unique elements. The order of the elements doesn’t matter, 
  so they can’t be reliably referenced by an index. Sets are useful when you want to ensure 
  there are no duplicate items.
=end

require 'set'

my_set = Set.new

#OR

my_set1 = Set.new([1,2,3,4,5,6])
puts my_set1

puts "print --------------------"

my_set1.each {|item| puts item}

# OR

my_set1.each do |item|
  puts item
end

puts "Adding more elements into the set-----------------------"

# Just like with arrays, you can use the << operator to add values 
# to the set. Unlike arrays, we use the add method instead of push.
# it will not add an element if it already exists
my_set1 << 55
my_set1.add 78

puts my_set1

puts "Ranges------------------------"

for count in 1...10
  puts count
end
puts "Ranges------------------------"
for count in 1...10
  puts count
end

puts "Creating range-----------------------"
my_range = Range.new(1,10)
my_range.each {|item| puts item}