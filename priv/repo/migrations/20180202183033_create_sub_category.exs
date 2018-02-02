defmodule BooksApi.Repo.Migrations.CreateSubCategory do
  use Ecto.Migration

  def change do
    create table(:sub_categories) do
      add :name, :string
      add :description, :text
      add :activated, :boolean, default: false, null: false
      add :category_id, references(:categories, on_delete: :nothing)

      timestamps()
    end

    create index(:sub_categories, [:category_id])
  end
end
