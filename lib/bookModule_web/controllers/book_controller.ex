defmodule BookModuleWeb.BookController do
  use BookModuleWeb, :controller

  alias BookModule.Books

  def index(conn, _params) do
    books = Books.list_books()
    IO.inspect(books)
    render(conn, "index.html", books: books)
  end
end
