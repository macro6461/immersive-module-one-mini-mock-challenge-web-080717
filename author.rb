require 'pry'
class Author

  attr_accessor :name, :book

  @@all = []

  def initialize(name)
    @name = name
    # @book = book
    @@all << self
  end

  def self.all
    @@all
  end

  def books
    Book.all.select do |book|
      book.author == self #self is author object
    end
  end

  def write_book(title, word_count)
    new_book = Book.new(title, self)
    new_book.word_count = word_count
    new_book
  end

  def total_words
    word_count_sum = 0
    self.books.collect do |book|
      word_count_sum += book.word_count
    end
    word_count_sum
  end

  def self.most_words
    author_most = self.all.sort do |author1, author2|
      author1.total_words <=> author2.total_words
    end.last
    puts "With a word_count of #{author_most.total_words}:"
    author_most
  end

end
