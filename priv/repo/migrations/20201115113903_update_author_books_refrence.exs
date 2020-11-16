defmodule BookModule.Repo.Migrations.UpdateAuthorBooksRefrence do
  use Ecto.Migration

  def change do
    alter table(:books) do
      modify :author_id, references(:authors)
    end
  end
end
