defmodule NestedLvWeb.ParentLive do
  use NestedLvWeb, :live_view

  def render(assigns) do
    # Problem is not present if we remove phx-update="ignore" from the div below.
    ~H"""
    <div id="lv-parent" phx-click="say_parent" phx-update="ignore">
      <h1>Parent</h1>
      <%= live_render(@socket, NestedLvWeb.ChildLive,
        id: "lv-child",
        # sticky: true # fixes situation, but that does not sound like viable solution.
        sticky: false
      ) %>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, socket, layout: false}
  end

  def handle_event("say_parent", _params, socket) do
    IO.puts("parent")

    {:noreply, socket}
  end
end
