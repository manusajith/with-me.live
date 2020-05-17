use Mix.Config

config :proxy, Proxy.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [host: "with-me.live", port: 80],
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  secret_key_base: Map.fetch!(System.get_env(), "SECRET_KEY_BASE"),
  server: true

config :collaborate, CollaborateWeb.Endpoint,
  cache_static_manifest: "priv/static/cache_manifest.json"

config :account, AccountWeb.Endpoint,
  cache_static_manifest: "priv/static/cache_manifest.json"

config :meet, MeetWeb.Endpoint,
  cache_static_manifest: "priv/static/cache_manifest.json"
