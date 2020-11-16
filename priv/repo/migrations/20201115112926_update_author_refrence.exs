defmodule BookModule.Repo.Migrations.UpdateAuthorRefrence do
  use Ecto.Migration

  def change do
    drop constraint(:books, "books_author_id_fkey")

  end
end
