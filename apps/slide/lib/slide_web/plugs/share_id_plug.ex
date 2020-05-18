defmodule SlideWeb.ShareIdPlug do
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
        |> Plug.Conn.put_session(:id, id)
    end
  end
end
