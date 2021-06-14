# Creating a File

test_file = File.new("test.txt","w+")

test_file.puts ("this is text file created by Ruby code")
test_file.close

# You can also write text to the existing file using a code block. 
# You don’t need to worry about closing the file here since Ruby will automatically close the file for you.

File.open("test.txt", "a+") {
  |file| file.puts("this is from code block")
}

puts File.read("test.txt")

puts "Reading from the Console -----------------------"
puts "What's your name?"
name = gets
puts "Hello #{name}"