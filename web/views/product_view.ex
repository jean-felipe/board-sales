defmodule BooksApi.ProductView do
  use BooksApi.Web, :view

  def render("index.json", %{products: products}) do
    %{data: render_many(products, BooksApi.ProductView, "product.json")}
  end

  def render("show.json", %{product: product}) do
    %{data: render_one(product, BooksApi.ProductView, "product.json")}
  end

  def render("product.json", %{product: product}) do
    %{id: product.id,
      name: product.name,
      description: product.description,
      activated: product.activated,
      category_id: product.category_id,
      price: product.price}
  end
end
