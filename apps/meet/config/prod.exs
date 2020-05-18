use Mix.Config

config :meet, MeetWeb.Endpoint,
  http: [port: 4003],
  url: [host: "meet.with-me.live", port: 80],
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  cache_static_manifest: "priv/static/cache_manifest.json"

config :logger, level: :info
