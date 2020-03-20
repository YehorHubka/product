class Book < Product

  attr_accessor :name, :janr, :author

  def initialize(params)
    super

    @name = params[:name]
    @janr = params[:janr]
    @author = params[:author]
  end

  def self.from_file(file_path)
    lines = File.readlines(file_path, encoding: 'UTF-8').map { |l| l.chomp }

    self.new(
        name: lines[0],
        janr: lines[1],
        author: lines[2],
        price: lines[3].to_i,
        quantity: lines[4].to_i
    )
  end

  def to_s
    puts "Книга «#{@name}», #{@janr}, автор — #{@author}, #{super}"
  end
end