defmodule NestedLvWeb.ChildLive do
  use NestedLvWeb, :live_view

  def render(assigns) do
    ~H"""
    <div phx-click="say_child">
      <h1>Child</h1>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, socket, layout: false}
  end

  def handle_event("say_child", _params, socket) do
    IO.puts("child")

    {:noreply, socket}
  end
end
