use Mix.Config

config :account, AccountWeb.Endpoint,
  url: [host: "account.with-me.live", port: 80],
  cache_static_manifest: "priv/static/cache_manifest.json"

config :logger, level: :info
