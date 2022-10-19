defmodule JuegoWeb.Router do
  use JuegoWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", JuegoWeb do
    pipe_through :api
  end
end
