defmodule Juego.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Juego.Repo,
      # Start the Telemetry supervisor
      JuegoWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Juego.PubSub},
      # Start the Endpoint (http/https)
      JuegoWeb.Endpoint
      # Start a worker by calling: Juego.Worker.start_link(arg)
      # {Juego.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Juego.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    JuegoWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
