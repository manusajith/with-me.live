defmodule DataStore.Accounts.UserToken do
  use Ecto.Schema

  schema "users_tokens" do
    field(:token, :binary)
    field(:context, :string)
    field(:sent_to, :string)
    belongs_to(:user, DataStore.Accounts.User)

    timestamps(updated_at: false)
  end
end
