class Author
  attr_reader :first_name, :last_name, :books

  def initialize(info)
    @first_name = info[:first_name]
    @last_name = info[:last_name]
    @books = []
  end

  def name
    @first_name + " " + @last_name
  end

  def write(title, publication_date)
    book_info = {author_first_name: @author_first_name,
                author_last_name: @author_last_name,
                title: title,
                publication_date: publication_date}

    book = Book.new(book_info)
    add_book(book)
    return book
  end

  def add_book(book)
    @books << book
  end

  def books
    @books
  end
end
