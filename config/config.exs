import Config

config :account, ecto_repos: [DataStore.Repo]

import_config "../apps/data_store/config/config.exs"
import_config "../apps/account/config/config.exs"
import_config "../apps/collaborate/config/config.exs"
import_config "../apps/meet/config/config.exs"
import_config "../apps/slide/config/config.exs"

import_config "#{Mix.env()}.exs"
