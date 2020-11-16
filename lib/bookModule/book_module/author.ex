defmodule BookModule.BookModule.Author do
  use Ecto.Schema
  import Ecto.Changeset

  schema "author" do
    field :biography, :string
    field :name, :string

    has_many :books, BookModule.Books.Book
    timestamps()
  end

  @spec changeset(
          {map, map} | %{:__struct__ => atom | %{__changeset__: map}, optional(atom) => any},
          :invalid | %{optional(:__struct__) => none, optional(atom | binary) => any}
        ) :: Ecto.Changeset.t()
  @doc false
  def changeset(author, attrs) do
    author
    |> cast(attrs, [:name, :biography])
    |> validate_required([:name, :biography])
  end
end
