import Config

config :phoenix, :json_library, Jason

config :storage, Storage.Repo,
  username: "neo",
  database: "with_me_dev"

config :account, AccountWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tLo0H0h0ABuYrDmZrOFY+WBV+T836F4XFv17oSuKNIE1wl5D7Gjq6bDiPrebgiKg",
  render_errors: [view: AccountWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Account.PubSub,
  live_view: [signing_salt: "Gq4NKCkJ"],
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: [
    node: [
      "node_modules/webpack/bin/webpack.js",
      "--mode",
      "development",
      "--watch-stdin",
      cd: Path.expand("../apps/account/assets", __DIR__)
    ]
  ]

config :account, ecto_repos: [Storage.Repo]
