import Config

config :proxy, Proxy.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [host: "with-me.live", port: 80],
  secret_key_base: Map.fetch!(System.get_env(), "SECRET_KEY_BASE"),
  server: true

database_url =
  System.get_env("DATABASE_URL") ||
    raise """
    environment variable DATABASE_URL is missing.
    For example: ecto://USER:PASS@HOST/DATABASE
    """

config :data_store, DataStore.Repo,
  url: database_url,
  pool_size: String.to_integer(System.get_env("POOL_SIZE") || "2")
