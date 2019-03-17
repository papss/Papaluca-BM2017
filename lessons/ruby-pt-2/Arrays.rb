# Arrays

#empty-array = []

colours = ["red", "blue", "green", "yellow", "orange"]

colours[2]
colours[0]  #fetches the specified item
colours[4]

# add new items to the collection (array):
colours << "periwinkle"
# or colours.push "periwinkle"

#remove an item at the end of the array:
colours.pop

# sorts array:

colours.sort

colours.each do |colour|
  puts colour
end

#.map

colours.map do |colour|
  colour.upcase
end
