use Mix.Config

config :account, AccountWeb.Endpoint,
  http: [port: 4001],
  url: [host: "account.with-me.live", port: 80],
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  cache_static_manifest: "priv/static/cache_manifest.json"

config :logger, level: :info
