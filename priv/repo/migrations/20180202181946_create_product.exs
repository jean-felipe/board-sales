defmodule BooksApi.Repo.Migrations.CreateProduct do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string
      add :description, :text
      add :activated, :boolean, default: false, null: false
      add :price, :decimal
      add :category_id, references(:categories, on_delete: :nothing)

      timestamps()
    end

    create index(:products, [:category_id])
  end
end
