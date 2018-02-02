defmodule BooksApi.ProductTest do
  use BooksApi.ModelCase

  alias BooksApi.Product

  @valid_attrs %{activated: true, description: "some description", name: "some name", price: "120.5"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Product.changeset(%Product{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Product.changeset(%Product{}, @invalid_attrs)
    refute changeset.valid?
  end
end
