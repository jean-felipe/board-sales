defmodule BooksApi.SubCategoryTest do
  use BooksApi.ModelCase

  alias BooksApi.SubCategory

  @valid_attrs %{activated: true, description: "some description", name: "some name"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = SubCategory.changeset(%SubCategory{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = SubCategory.changeset(%SubCategory{}, @invalid_attrs)
    refute changeset.valid?
  end
end
