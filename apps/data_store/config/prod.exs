config :data_store, DataStore.Repo,
  url: database_url,
  pool_size: String.to_integer(System.get_env("POOL_SIZE") || "2")
