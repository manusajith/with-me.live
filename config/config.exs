import Config

config :phoenix, :json_library, Jason

config :collaborate, CollaborateWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "OjFj86OvXzc//zFNEEras5IYACXoCydogrunYt0c7HdAh5GR3T0K/M97IqnBbEUI",
  render_errors: [view: CollaborateWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Collaborate.PubSub,
  live_view: [signing_salt: "zQy/4qY2"],
  server: false

config :account, AccountWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tLo0H0h0ABuYrDmZrOFY+WBV+T836F4XFv17oSuKNIE1wl5D7Gjq6bDiPrebgiKg",
  render_errors: [view: AccountWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Account.PubSub,
  live_view: [signing_salt: "Gq4NKCkJ"],
  server: false

config :meet, MeetWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "58AthN+EHhwShAUcEMAtX62iYGLkPQZCLiYhZLQAxvhWugwv/yyQrW/XmaUuwMHl",
  render_errors: [view: MeetWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Meet.PubSub,
  live_view: [signing_salt: "kkE3QV9q"]

config :account, ecto_repos: [DataStore.Repo]
