# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phx_channels,
  ecto_repos: [PhxChannels.Repo]

# Configures the endpoint
config :phx_channels, PhxChannelsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6iZi+0KTeyOZfFf4GLM5Ja9RlQyNIE7Ey6rhjJ71HOyk8vPtJQNW3b3lUs1Bae46",
  render_errors: [view: PhxChannelsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhxChannels.PubSub,
  live_view: [signing_salt: "oiFKYMI2"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
