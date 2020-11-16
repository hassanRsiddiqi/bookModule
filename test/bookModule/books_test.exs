defmodule BookModule.BooksTest do
  use BookModule.DataCase

  alias BookModule.Books

  describe "books" do
    alias BookModule.Books.Book

    @valid_attrs %{author_id: 42, category_id: 42, description: "some description", image_url: "some image_url", name: "some name", published_on: ~D[2010-04-17]}
    @update_attrs %{author_id: 43, category_id: 43, description: "some updated description", image_url: "some updated image_url", name: "some updated name", published_on: ~D[2011-05-18]}
    @invalid_attrs %{author_id: nil, category_id: nil, description: nil, image_url: nil, name: nil, published_on: nil}

    def book_fixture(attrs \\ %{}) do
      {:ok, book} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Books.create_book()

      book
    end

    test "list_books/0 returns all books" do
      book = book_fixture()
      assert Books.list_books() == [book]
    end

    test "get_book!/1 returns the book with given id" do
      book = book_fixture()
      assert Books.get_book!(book.id) == book
    end

    test "create_book/1 with valid data creates a book" do
      assert {:ok, %Book{} = book} = Books.create_book(@valid_attrs)
      assert book.author_id == 42
      assert book.category_id == 42
      assert book.description == "some description"
      assert book.image_url == "some image_url"
      assert book.name == "some name"
      assert book.published_on == ~D[2010-04-17]
    end

    test "create_book/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Books.create_book(@invalid_attrs)
    end

    test "update_book/2 with valid data updates the book" do
      book = book_fixture()
      assert {:ok, %Book{} = book} = Books.update_book(book, @update_attrs)
      assert book.author_id == 43
      assert book.category_id == 43
      assert book.description == "some updated description"
      assert book.image_url == "some updated image_url"
      assert book.name == "some updated name"
      assert book.published_on == ~D[2011-05-18]
    end

    test "update_book/2 with invalid data returns error changeset" do
      book = book_fixture()
      assert {:error, %Ecto.Changeset{}} = Books.update_book(book, @invalid_attrs)
      assert book == Books.get_book!(book.id)
    end

    test "delete_book/1 deletes the book" do
      book = book_fixture()
      assert {:ok, %Book{}} = Books.delete_book(book)
      assert_raise Ecto.NoResultsError, fn -> Books.get_book!(book.id) end
    end

    test "change_book/1 returns a book changeset" do
      book = book_fixture()
      assert %Ecto.Changeset{} = Books.change_book(book)
    end
  end
end
