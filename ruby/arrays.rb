months = ["January", "February", "March", "April", "May", "June", "July"]
puts months[6]

months << "August"

puts "-------------------------"
puts months

months.push ("September")

puts "-------------------------"
puts months

months.insert(2, "October")
puts "-------------------------"
puts months


months.pop
puts "-------------------------"
puts months

months.delete_at(2)
puts "-------------------------"
puts months

