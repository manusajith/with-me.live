defmodule DataStore.Accounts.User do
  use Ecto.Schema

  schema "users" do
    field :email, :string
    field :password, :string, virtual: true
    field :hashed_password, :string
    field :confirmed_at, :naive_datetime

    timestamps()
  end
end
