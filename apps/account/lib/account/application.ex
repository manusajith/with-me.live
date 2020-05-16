defmodule Account.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      AccountWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Account.PubSub},
      # Start the Endpoint (http/https)
      AccountWeb.Endpoint
      # Start a worker by calling: Account.Worker.start_link(arg)
      # {Account.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Account.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    AccountWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
