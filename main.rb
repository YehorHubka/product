require_relative 'product'
require_relative 'book'
require_relative 'film'


# Считываем наши книгу и фильм из папок data/books и data/films соответственно
current_path = File.dirname(__FILE__)
film = Film.from_file(current_path + '/data/films/1.txt')


# Выводим их на экран
puts film


# Пытаемся вызвать метод from_file у класса Product и ловим ошибку
begin
  Product.from_file(current_path + '/data/films/1.txt')
rescue NotImplementedError
  puts 'Метод класса Product.from_file не реализован'
end
