my_array = [98,13,5,3,6]

puts my_array.include?(0)
puts my_array.include?(6)

puts "sort -------------------"

puts my_array.sort

puts "map-------------------"
my_array.each { |n| puts n*2}

# The map method invokes the code inside the block once for each 
# element in the array and will create and return a new array that 
# contains the values returned by the block
puts "map-------------------"
new_array =  my_array.map { |item| item*2}
puts new_array
