defmodule PhxChannelsWeb.PageController do
  use PhxChannelsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
