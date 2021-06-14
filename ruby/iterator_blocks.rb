puts "time -------->"
5.times {puts "I am learning Ruby!"}


puts "each -------->"
days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']

days.each {|d| puts d}


puts "blocks -------->"

8.times do
  puts "this is inside block"
end