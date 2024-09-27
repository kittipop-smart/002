class Book
  attr_accessor :title

end

class Book
  def uppercase_title
    @title.upcase
  end
end

book = Book.new
book.title = "The Great Gatsby"
puts book.uppercase_title  # Output: "THE GREAT GATSBY"