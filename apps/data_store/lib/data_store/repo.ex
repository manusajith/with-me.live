defmodule DataStore.Repo do
  use Ecto.Repo, otp_app: :data_store, adapter: Ecto.Adapters.Postgres
end
