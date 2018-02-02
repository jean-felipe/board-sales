defmodule BooksApi.SubCategory do
  use BooksApi.Web, :model

  schema "sub_categories" do
    field :name, :string
    field :description, :string
    field :activated, :boolean, default: false
    belongs_to :category, BooksApi.Category, foreign_key: :category_id

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :description, :activated])
    |> validate_required([:name, :description, :activated])
  end
end
