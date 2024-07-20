# Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only siblings' names into a new array.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

sibling_name = []

sibling_name = family.select { |k| (k == :sisters) || (k == :brothers) }

# puts sibling_name

sibling_name = family.select do
    |k, v| (k == :sisters) || (k == :brothers)
end
# For one complete array, we use flatten method
arr = sibling_name.values.flatten

p arr

# Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.

# merge method is non-destructive, it does not change the original hash
# merge! method is destructive, it changes the original hash

# Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.
name_and_age = { "Steve" => 31, "Joe" => 19, "Bob" => 42 }
# Single line of code
name_and_age.each_key { |k| puts k }
name_and_age.each_value { |v| puts v }
# Multiple Lines of code
keys = name_and_age.each_key do |k|
    puts k
end

values = name_and_age.each_value do |v|
    puts v
end

# Single line of code
name_and_age.each { |k, v| puts k, v }

# Keys and values all together in one array
both = name_and_age.each do |k, v|
    puts k, v
end

# Sample of the program
opposites = {positive: "negative", up: "down", right: "left"}

opposites.each_key { |key| puts key }
opposites.each_value { |value| puts value }
opposites.each { |key, value| puts "The opposite of #{key} is #{value}" }


person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

# my_name_is = person.name:
# This will bring an error
# why? Because the key is a symbol, not a string 

# We try this instead
my_name_is = person[:name]
puts my_name_is


animals = {
    dog: "bark",
    pig: "oink",
    horse: "neigh",
    cow: "moo",
    squirrel: "chirp",
    aligator: "growl",
    bear: "roar",
    snake: "hiss",
    cat: "meow",
    bird: "chirp",
    mouse: "squeak"
}

# output = animals.include?(:dog)
# ans = animals.include?(:lion)
# del = animals.include?(:dog)
# find = animals.has_value?("oink")
# deli = animals.has_value?("chirp")
spec = animals.has_key?(:dog)
# val = animals.include?('shark')
show = animals.value?(:cow)
# pol = animals.has_value?(:cow)
lop = animals.include?(:cow)
# puts pol
puts lop
# puts ans
# puts del
# puts output
# puts find
# puts deli
puts spec
# puts val
puts show