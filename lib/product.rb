class Product
  attr_accessor :price, :quantity

  def self.from_file(file_path)
    raise NotImplementedError
  end

  def initialize(params)
    @price = params[:price]
    @quantity = params[:quantity]
  end

  def to_s
    "#{@price} руб. (осталось #{@quantity})"
  end

  def update(params)
    @price = params[:price] if params[:price]
    @quantity = params[:quantity] if params[:quantity]
  end

  def buy
    @quantity -= 1
  end
end