use Mix.Config

config :storage,
  ecto_repos: [Storage.Repo]

config :storage, Storage.Repo,
  username: System.get_env("POSTGRES_USER"),
  password: System.get_env("POSTGRES_PASSWORD"),
  database: System.get_env("POSTGRES_DB_ENV"),
  hostname: System.get_env("POSTGRES_HOST"),
