use Mix.Config

config :proxy, Proxy.Endpoint, http: [port: 4001], server: false
config :logger, level: :warn
