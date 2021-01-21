defmodule PhxChannels.Repo do
  use Ecto.Repo,
    otp_app: :phx_channels,
    adapter: Ecto.Adapters.Postgres
end
