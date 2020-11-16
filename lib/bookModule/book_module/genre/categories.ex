defmodule BookModule.BookModule.Genre.Categories do
  use Ecto.Schema
  import Ecto.Changeset

  schema "category" do
    field :name, :string

    has_many :books, BookModule.Books.Book
    timestamps()
  end

  @doc false
  def changeset(categories, attrs) do
    categories
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
