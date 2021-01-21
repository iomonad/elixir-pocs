defmodule PhxChannelsWeb.UserSocket do
  use Phoenix.Socket

  ## Channels
  channel "room:*", PhxChannelsWeb.RoomChannel

  @max_age 24 * 60 * 60
  def connect(%{"token" => token}, socket) do
    case Phoenix.Token.verify(socket, "user token", token, max_age: @max_age) do
      {:ok, user_id} ->
	{:ok, assign(socket, :current_user_id, user_id)}
      {:error, _reason} ->
	:error
    end
  end

  @impl true
  def connect(_params, socket, _connect_info) do
    {:ok, socket}
  end

  @impl true
  def id(_socket), do: nil
end
