# Hashes:
empty_hash = { }

# old syntax method                       new syntax method
bttf = { :title => "Back to the Future", director: "Robert Zemeckis" }

#symbols:
#:symbol a symbol is a placeholder name with no associated value

puts bttf[:title]
puts bttf[:director]

# adds a new item to the hash

bttf[:year] = 1985

puts bttf[:year]

# sorting Hashes:

bttf.each do |key, value|
  puts "#{key} = #{value}"
end
