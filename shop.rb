require_relative 'product'
require_relative 'film'
require_relative 'book'

products = []

products << Film.new(
  title: 'Леон', year: '1994', producer: 'Люк Бессон', price: 990, quantity: 5
)

products << Film.new(
  title: 'Дурак', year: '2014', producer: 'Юрий Быков', price: 390, quantity: 1
)

products << Book.new(
  title: 'Идиот',
  genre: 'роман',
  author: 'Федор Достоевский',
  price: 1500,
  quantity: 10
)

# Выводим все продукты в консоль просто передавая их методу puts
puts 'Вот какие товары у нас есть:'
puts
products.each { |product| puts product }
