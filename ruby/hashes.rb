person_hash = {
  "name" => "Varun",
  "age" => 40
}

puts person_hash

puts "USING NEW --------------------------------"
person_hash1 = Hash.new
person_hash1["name"] = "Mickey"
person_hash1["age"] = 20
person_hash1["gender"] = "Male"

puts person_hash1

puts "DELETE --------------------------------"

person_hash1.delete("gender")
puts person_hash1

puts "PRINTING ALL VALUES --------------------------------"
person_hash.each { |key, value| 
  puts "Key:#{key}, Value:#{value}"
}
puts "---------------------"
person_hash.each do |key, value| 
  puts "Key:#{key}, Value:#{value}"
end

puts "has_key? -------------------------------"

puts person_hash.has_key?("name")
puts person_hash.has_key?("address")

puts "select -------------------------------"

=begin 
  The select method is usually used with a block and returns 
  any key-value pairs that satisfy the condition in the block.
=end

puts person_hash.select {|key,value| key=="age"}

puts "fetch -------------------------------"
# The fetch method returns the value of the key you specify, if it exists in the hash.
puts person_hash.fetch("age")
puts person_hash.fetch("age1")