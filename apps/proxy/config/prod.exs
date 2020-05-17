use Mix.Config

config :meet, Proxy.Endpoint,
  url: [host: "with-me.live", port: 80],
  force_ssl: [rewrite_on: [:x_forwarded_proto]]

config :logger, level: :info
