require_relative 'product'
require_relative 'book'
require_relative 'film'

new_book = Book.new(:price => 300, :quantity => 5)

puts "New book price is #{new_book.price} and amount = #{new_book.quantity}"