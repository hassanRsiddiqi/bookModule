defmodule BookModule.Repo.Migrations.AlterBooksTable do
  use Ecto.Migration

  def change do
    alter table(:books) do
      modify :author_id, references(:authors)
      modify :category_id, references(:category)
    end
  end
end
