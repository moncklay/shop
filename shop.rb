require_relative 'product'
require_relative 'film'
require_relative 'book'

Leon = Film.new(290, 1)
puts "Фильм Леон стоит #{Leon.price} руб. На складе #{Leon.quantity} шт."