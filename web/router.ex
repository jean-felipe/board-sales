defmodule BooksApi.Router do
  use BooksApi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BooksApi do
    pipe_through :api
    resources "/products", ProductController, except: [:new, :edit]
    resources "/categories", CategoryController, except: [:new, :edit]
    resources "/sub-categories", SubCategoryController, except: [:new, :edit]
  end
end
