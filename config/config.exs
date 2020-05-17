import Config

config :phoenix, :json_library, Jason

config :data_store, DataStore.Repo,
  username: "neo",
  database: "with_me_dev"

config :proxy, Proxy.Endpoint,
  url: [host: "localhost"],
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  server: true

config :account, AccountWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tLo0H0h0ABuYrDmZrOFY+WBV+T836F4XFv17oSuKNIE1wl5D7Gjq6bDiPrebgiKg",
  render_errors: [view: AccountWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Account.PubSub,
  live_view: [signing_salt: "Gq4NKCkJ"],
  # http: [port: 4000],
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

config :collaborate, CollaborateWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "OjFj86OvXzc//zFNEEras5IYACXoCydogrunYt0c7HdAh5GR3T0K/M97IqnBbEUI",
  render_errors: [view: CollaborateWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Collaborate.PubSub,
  live_view: [signing_salt: "zQy/4qY2"],
  # http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: [
    node: [
      "node_modules/webpack/bin/webpack.js",
      "--mode",
      "development",
      "--watch-stdin",
      cd: Path.expand("../apps/collaborate/assets", __DIR__)
    ]
  ]

config :slide, SlideWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "J5T37N6mUNtR03113qF6mqT/78p5XEdD/eAM4KnVYjyNWumbF/14Gl4wIAhyEqMD",
  render_errors: [view: SlideWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Slide.PubSub,
  live_view: [signing_salt: "KZp9C3/r"],
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
      cd: Path.expand("../apps/slide/assets", __DIR__)
    ]
  ]

config :account, ecto_repos: [DataStore.Repo]
