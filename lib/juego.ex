defmodule Juego do
  use Supervisor

  def start_link(init_arg) do
    Supervisor.start_link(__MODULE__, init_arg, name: __MODULE__)
  end

  def init(_init_arg) do
    children = []

    Supervisor.init(children, strategy: :one_for_one)
  end

  def newGame() do
  end

  @moduledoc """
  Juego keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """
end
