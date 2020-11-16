defmodule BookModule.Books.Book do
  use Ecto.Schema
  import Ecto.Changeset

  schema "books" do
    field :description, :string
    field :image_url, :string
    field :name, :string
    field :published_on, :date

    belongs_to :category, BookModule.BookModule.Genre.Categories
    belongs_to :author, {"authors", BookModule.BookModule.Author}
    timestamps()
  end

  @spec changeset(
          {map, map} | %{:__struct__ => atom | %{__changeset__: map}, optional(atom) => any},
          :invalid | %{optional(:__struct__) => none, optional(atom | binary) => any}
        ) :: Ecto.Changeset.t()
  @doc false
  def changeset(book, attrs) do
    book
    |> cast(attrs, [:name, :category_id, :author_id, :description, :published_on, :image_url])
    |> validate_required([:name, :category_id, :author_id, :description, :published_on, :image_url])
  end
end
