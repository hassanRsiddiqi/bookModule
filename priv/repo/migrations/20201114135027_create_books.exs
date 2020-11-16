defmodule BookModule.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :name, :string
      add :category_id, :integer
      add :author_id, :integer
      add :description, :text
      add :published_on, :date
      add :image_url, :string

      timestamps()
    end

  end
end
