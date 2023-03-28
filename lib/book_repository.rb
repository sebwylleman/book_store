require_relative "./book"

class BookRepository
  
  def all
    # Executes the SQL query:
    sql = 'SELECT * FROM books;'
    result_set = DatabaseConnection.exec_params(sql, [])

    books = []

    result_set.each do |element|
      book = Book.new
      book.title = element['title']
      book.author = element['author']
      book.id = element['id']
      books << book
    end
    books
  end
end