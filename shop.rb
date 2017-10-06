require_relative 'lib/product'
require_relative 'lib/film'
require_relative 'lib/book'
require_relative 'lib/disk'
require_relative 'lib/product_collection'

basket = []
basket_price = 0
choice = -1

collection = ProductCollection.from_dir(File.dirname(__FILE__) + '/data')

collection.sort!(by: :price, order: :asc)

until choice == 0 do
  collection.to_a.each_with_index do |product, index|
    puts "#{index+1}. #{product}"
  end
  puts "0. Выход"
  puts
  choice = STDIN.gets.chomp.to_i
  selected_product = collection.to_a[(choice - 1)]
  if choice != 0
    puts "Вы выбрали: #{selected_product}"
    basket_price += selected_product.price
    selected_product.buy
    basket << selected_product
    puts
    puts "Всего товаров на сумму: #{selected_product.price}"
  else
    if basket.size == 0
      puts "Надеемся в слудующий раз Вы найдете нужный Вам товар!"
    else
      puts "Вы купили:"
      puts basket
      puts
      puts "С Вас - #{basket_price} руб. Спасибо за покупку! Ждем Вас снова!"
    end
  end
end




