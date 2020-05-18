defmodule SlideWeb.ShareIdPlug do

  alias DataStore.Account.User
  import Ecto

  def init(opts) do
    opts
  end

  def call(conn, _opts) do
    %{"id" => id} = Plug.Conn.fetch_query_params(conn).params

    case id do
      nil ->
        conn

      _ ->
        conn
        |> Plug.Conn.put_session(:id, id, current_user: anonymous_user)
    end
  end

  defp anonymous_user do
    %User{id: Ecto.UUID.generate, email: "hi@manu.dev"}
  end
end
