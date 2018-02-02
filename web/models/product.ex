defmodule BooksApi.Product do
  use BooksApi.Web, :model

  schema "products" do
    field :name, :string
    field :description, :string
    field :activated, :boolean, default: false
    field :price, :decimal
    belongs_to :category, BooksApi.Category, foreign_key: :category_id

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :description, :activated, :price])
    |> validate_required([:name, :description, :activated, :price])
  end
end
