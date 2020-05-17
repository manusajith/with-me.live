# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :meet, MeetWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "58AthN+EHhwShAUcEMAtX62iYGLkPQZCLiYhZLQAxvhWugwv/yyQrW/XmaUuwMHl",
  render_errors: [view: MeetWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Meet.PubSub,
  live_view: [signing_salt: "kkE3QV9q"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
