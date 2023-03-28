require "book_repository"

Rspec.describe BookRepository do
  it "returns the lists of books" do
    repo = BookRepository.new
    books = repo.all

    expect(books[0].length).to eq 2
    expect(books[0].title).to eq 'Emma'
    expect(books[0].author).to eq 'Jane Austen'
    expect(books[0].id).to eq 1

    expect(books[1].length).to eq 2
    expect(books[1].title).to eq 'Dracula'
    expect(books[1].author).to eq 'Bram Stoker'
    expect(books[1].id).to eq 2

  end
end