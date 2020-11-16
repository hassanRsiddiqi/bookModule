defmodule BookModule.Genre.Category do
  @moduledoc """
  The Books context.
  """

  import Ecto.Query, warn: false
  alias BookModule.Repo

  alias BookModule.BookModule.Genre.Categories

  @doc """
  Returns the list of categories.

  ## Examples

      iex> list_categories()
      [%Category{}, ...]

  """
  def list_categories do
    Repo.all(Categories)
  end

  @doc """
  Gets a single category.

  Raises `Ecto.NoResultsError` if the category does not exist.

  ## Examples

      iex> get_category!(123)
      %Category{}

      iex> get_category!(456)
      ** (Ecto.NoResultsError)

  """
  def get_category!(id), do: Repo.get!(Categories, id)

  @doc """
  Creates a category.

  ## Examples

      iex> create_category(%{field: value})
      {:ok, %Categories{}}

      iex> create_category(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_category(attrs \\ %{}) do
    %Categories{}
    |> Categories.changeset(attrs)
    |> Repo.insert()
  end

end
