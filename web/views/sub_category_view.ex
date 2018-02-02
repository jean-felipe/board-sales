defmodule BooksApi.SubCategoryView do
  use BooksApi.Web, :view

  def render("index.json", %{sub_categories: sub_categories}) do
    %{data: render_many(sub_categories, BooksApi.SubCategoryView, "sub_category.json")}
  end

  def render("show.json", %{sub_category: sub_category}) do
    %{data: render_one(sub_category, BooksApi.SubCategoryView, "sub_category.json")}
  end

  def render("sub_category.json", %{sub_category: sub_category}) do
    %{id: sub_category.id,
      name: sub_category.name,
      description: sub_category.description,
      activated: sub_category.activated,
      category_id: sub_category.category_id}
  end
end
