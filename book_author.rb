class BookAuthor

  attr_accessor :book, :author, :word_count

  @@all = []

  def initialize(book, author)
    @book = book
    @author = author
    @word_count = 1 + rand(100000)
    @@all << self
  end

  def self.all
    @@all
  end

end
