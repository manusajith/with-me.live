defmodule MeetWeb.VideoChannel do
  use Phoenix.Channel

  def join("video", _message, socket) do
    {:ok, socket}
  end

  def handle_in("message", %{"body" => body}, socket) do
    broadcast_from!(socket, "message", %{body: body})
    {:noreply, socket}
  end
end
