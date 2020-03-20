class Product

  attr_accessor :price, :quantity

  def initialize(params)
    @price = params[:price]
    @quantity = params[:quantity]
  end

  def self.from_file(file_path)
    raise NotImplementedError
  end

  def to_s
    "#{@price} руб. (осталось #{@quantity})"
  end

end