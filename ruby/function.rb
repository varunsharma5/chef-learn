def greetings
  puts "Hello World function !"
end

puts "with args --------------------------------"

def greeting_with_name (name="default")
  puts "Hello #{name}!!!"
end

greetings
greeting_with_name("Varun")

puts "with multiple args --------------------------------"

def sum(x,y)
  z = x + y
  puts "SUM: #{z}"
end

sum(2,3)

puts "any number of arguments. -------------------------"

def optional_args(*a)
  a.each {|arg| puts arg}
  # puts a
end

optional_args(1,2,3)


puts "RETURN VALUES -------------------------"

def sum_ret(x,y)
  z = x + y
  return z
end

sum = sum_ret(3,4)
puts sum

puts "Explicit Return --------------------------"
# return value using 'return' keyword

puts "Implicit Return --------------------------"
# If a function lacks an explicit return statement, then Ruby will return the value of the last executed instruction
def prod(x,y)
  x*y
end

puts prod(2,5)