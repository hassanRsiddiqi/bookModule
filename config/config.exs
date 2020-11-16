# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bookModule,
  ecto_repos: [BookModule.Repo]

# Configures the endpoint
config :bookModule, BookModuleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "9J8t7JzE5SitpRb2mcZFMuCCi7tZk529aMxAHZM8dz6XQv+w5mgXQZlAQ4nT5Nw4",
  render_errors: [view: BookModuleWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: BookModule.PubSub,
  live_view: [signing_salt: "6u8dHkfU"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
