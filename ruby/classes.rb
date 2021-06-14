puts "Creating a class -----------------------"
class Car
  # like a constructor
  def initialize (brand="default")
    puts "The object is now created"
    @brand = brand
  end
end

car = Car.new

puts "Instance and class methods -----------------------"

class Greetings
  def self.class_greeting
    puts "Hello this is class method"
  end

  def instance_greeting
    puts "Hello this is instance method"
  end
end

Greetings.class_greeting

my_greeting = Greetings.new
my_greeting.instance_greeting

# Instance Variables and Class Variables
# We can declare a class variable with the prefix @@
class Car 
  @@count = 0

  def initialize
    @@count +=1
  end

  def self.get_instance_count
    @@count
  end
end

c1 = Car.new
c2 = Car.new
c3 = Car.new

puts "num of instances created:"+Car.get_instance_count.to_s

# Mixins
# A mixin is simply a set of code wrapped in a module that can be added to one or more classes to add to its functionality
# Once we ‘mixin’ a module into a class, the class can access all the methods of the module.
# Whenever you want to share functionality between different classes, mixins are a perfect choice
module GreetingsModule
  def say_hello
    puts "Hello !"
  end
end

class Person
  include GreetingsModule
end

p1 = Person.new
p1.say_hello

# In order to access module methods as class methods, you would use extend.

class Person1
  extend GreetingsModule
end

Person1.say_hello