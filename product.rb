class Product

  attr_reader :price, :quantity

  def initialize(params)
    @price = params[:price]
    @quantity = params[:quantity]
  end

end