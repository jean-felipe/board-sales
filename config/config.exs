# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :books_api,
  ecto_repos: [BooksApi.Repo]

# Configures the endpoint
config :books_api, BooksApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8EzHYU22qxba6YuoRbdKUPNWMDd2K/7Y58wSB4K+wGab1VzkTjTW6n3bJPhVDPfH",
  render_errors: [view: BooksApi.ErrorView, accepts: ~w(json)],
  pubsub: [name: BooksApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Configures Cors
config :phoenix, :format_encoders,
  "json-api": Poison

  config :mime, :types, %{
    "application/vnd.api+json" => ["json-api"]
  }

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
