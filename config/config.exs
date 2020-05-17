import Config

import_config "../apps/data_store/config/config.exs"
import_config "../apps/account/config/config.exs"
import_config "../apps/collaborate/config/config.exs"
import_config "../apps/meet/config/config.exs"
import_config "../apps/proxy/config/config.exs"

import_config "#{Mix.env()}.exs"
