defmodule BookModule.Repo.Migrations.CreateAuthors do
  use Ecto.Migration

  def change do
    create table(:author) do
      add :name, :string
      add :biography, :text

      timestamps()
    end

  end
end
