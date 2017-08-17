class Book

  attr_accessor :title, :author, :word_count

  @@all = []

  def initialize(title, author)
    @author = author
    @title = title
    @word_count = 1 + rand(100000)
    @@all << self
  end

  def self.all
    @@all
  end

end
