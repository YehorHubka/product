class Film < Product

  attr_accessor :name, :regiser, :year

  def initialize(params)
    super

    @name = params[:name]
    @year = params[:year]
    @regiser = params[:regiser]
  end

  def self.from_file(file_path)
    lines = File.readlines(file_path, encoding: 'UTF-8').map { |l| l.chomp }

    self.new(
        name: lines[0],
        regiser: lines[1],
        year: lines[2].to_i,
        price: lines[3].to_i,
        quantity: lines[4].to_i
    )
  end

  def to_s
    puts "Фильм «#{@name}», #{@year}, реж. — #{@regiser}, #{super}"
  end
end