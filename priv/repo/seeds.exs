# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     BooksApi.Repo.insert!(%BooksApi.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will halt execution if something goes wrong.

alias BooksApi.Repo
alias BooksApi.Product
alias BooksApi.Category
alias BooksApi.SubCategory

# Section where base is clean
# Repo.delete_all Product
# Repo.delete_all SubCategory
# Repo.delete_all Category


Repo.insert! %Category{name: "Hobbies", description: "Esportes, games, jogos de tabuleiro e etc."}
Repo.insert! %Category{name: "Eletronicos", description: "TVs, Computadores, celulares etc."}
Repo.insert! %Category{name: "Automoveis", description: "Carros, motos, caminhões, tratores etc."}

Repo.insert! %SubCategory{name: "Jogos", description: "Jogos de tabuleiro e jogos eletronicos", activated: true,  category_id: 1}
Repo.insert! %Product{name: "Violão", description: "Violão usado por poucos anos, perfeita condição.", 
activated: true, price: 150.23, category_id: 1}
  
