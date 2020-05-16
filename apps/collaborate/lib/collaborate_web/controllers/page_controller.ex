defmodule CollaborateWeb.PageController do
  use CollaborateWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
