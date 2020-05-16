use Mix.Config

config :proxy, Proxy.Endpoint,
  url: [host: "localhost"],
  http: [port: 4000],
  secret_key_base: "OjFj86OvXzc//zFNEEras5IYACXoCydogrunYt0c7HdAh5GR3T0K/M97IqnBbEUI",
  pubsub_server: Proxy.PubSub,
  server: true

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

import_config "#{Mix.env()}.exs"
