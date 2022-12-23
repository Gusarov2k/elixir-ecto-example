defmodule MyParser.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    # add ecto to supervisor
    children = [
      MyParser.Repo
      # Starts a worker by calling: MyParser.Worker.start_link(arg)
      # {MyParser.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: MyParser.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
