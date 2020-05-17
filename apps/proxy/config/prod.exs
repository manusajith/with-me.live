use Mix.Config

config :meet, Proxy.Endpoint,
  url: [host: "with-me.live", port: 80]

config :logger, level: :info
