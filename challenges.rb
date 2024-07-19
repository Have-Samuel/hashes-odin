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