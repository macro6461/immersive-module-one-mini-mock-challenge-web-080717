require 'pry'
require_relative './book'
require_relative './author'


ellie = Author.new("Ellie Wiesel")
jk = Author.new("J.K. Rowling")
yann = Author.new("Yann Martel")

sorcerer = Book.new("Harry Potter Sorcerer's Stone", jk)
chamber = Book.new("Harry Potter Chamber of Secrets", jk)
prisoner = Book.new("Harry Potter Prisoner", jk)
goblet = Book.new("Harry Potter Goblet of Fire", jk)
pie = Book.new("Life of Pie", yann)
night = Book.new("Night", ellie)


Pry.start
