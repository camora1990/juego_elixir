defmodule Juego.Repo do
  use Ecto.Repo,
    otp_app: :juego,
    adapter: Ecto.Adapters.Postgres
end
