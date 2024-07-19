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

puts sibling_name.values