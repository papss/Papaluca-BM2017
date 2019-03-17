require './books'
require './cds'

hp1 = Book.new("Harry Potter 1")
b5 = Cd.new ("Beethoven's Fifth")

puts hp1.read
puts b5.play

puts "the library has #{ Item.num_total} items in its collection."
puts "the library has loaned out #{Item.num_loaned} items."

hp1.check_out

puts "the library has #{ Item.num_total} items in its collection."
puts "the library has loaned out #{Item.num_loaned} items."

b5.check_out

puts "the library has #{ Item.num_total} items in its collection."
puts "the library has loaned out #{Item.num_loaned} items."

b5.check_in

puts "the library has #{ Item.num_total} items in its collection."
puts "the library has loaned out #{Item.num_loaned} items."
