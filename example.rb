shoes = {
  "summer" => "sandals",
  "winter" => "boots"
}

puts shoes['winter'] # boots
puts shoes['clothes'] # nil

# Fetch method can be used to raise an error when the key is not found
# puts shoes.fetch('jerricans') # KeyError: key not found: "jerricans"

# Adding a new key-value pair
shoes['sneakers'] = 'casual'

puts shoes

# Changing the value of a key
shoes['winter'] = 'christmas boots'

puts shoes

shoes.delete('winter')

puts shoes

hash1 = { "a" => 100, "b" => 100 }
hash2 = { "b" => 200, "c" => 300 }
hash3 = hash1.merge(hash2) { |key, a, b| a + b }

puts hash3

# Alternative way to create a hash
hash3 = hash1.merge(hash2) do |key, a, b|
    puts key, a, b
end

puts hash3

# Symbols as Hash keys
# Old way Rocket syntax
america = {
    :chevrolet => 'Corvette',
    :ford => 'Mustang',
    :dodge => 'Ram'
}
# New way Symbol syntax
japan = {
    toyota: 'Corolla',
    honda: 'Accord',
    nissan: 'Altima'
}

