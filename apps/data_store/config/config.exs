use Mix.Config

config :data_store,
  ecto_repos: [DataStore.Repo]

config :data_store, DataStore.Repo,
  username: System.get_env("POSTGRES_USER"),
  password: System.get_env("POSTGRES_PASSWORD"),
  database: System.get_env("POSTGRES_DB_ENV"),
  hostname: System.get_env("POSTGRES_HOST"),
