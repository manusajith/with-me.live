defmodule SlideWeb.ShareLive do
  use SlideWeb, :live_view

  @ids 0..9

  @impl true
  def mount(%{"id" => id}, _session, socket) do
    subscribe(id)
    {:ok, assign(socket, id: id, current_slide_id: 0)}
  end

  @impl true
  def handle_event("prev", _, socket) do
    previous_slide_id = prev_id(socket)
    broadcast(socket, previous_slide_id)

    {:noreply, assign(socket, :current_slide_id, previous_slide_id)}
  end

  @impl true
  def handle_event("next", _, socket) do
    next_slide_id = next_id(socket)
    broadcast(socket, next_slide_id)

    {:noreply, assign(socket, :current_slide_id, next_slide_id)}
  end

  @impl true
  def handle_info(%{"slide_id" => slide_id}, socket) do
    {:noreply, assign(socket, current_slide_id: slide_id)}
  end

  defp prev_id(socket) do
    socket.assigns.current_slide_id - 1
  end

  defp next_id(socket) do
    socket.assigns.current_slide_id + 1
  end

  defp subscribe(id) do
    Phoenix.PubSub.subscribe(Slide.PubSub, id)
  end

  defp topic(socket) do
    socket.assigns.id
  end

  defp broadcast(socket, slide_id) do
    Phoenix.PubSub.broadcast(Slide.PubSub, topic(socket), %{"slide_id" => slide_id})
  end
end
