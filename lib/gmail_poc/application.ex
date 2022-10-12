defmodule GmailPoc.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Start the Ecto repository
      # GmailPoc.Repo,
      # Start the endpoint when the application starts
      GmailPocWeb.Endpoint,
      # Gmail.User.start_mail("user@example.com", "user-refresh-token")
      # {Gmail.User, %{user_id: "josuegrullon", refresh_token: "cidonsi"}}
      # worker(Gmail.User, [%{user_id: "josuegrullon", refresh_token: "cidonsi"}], restart: :transient)
      # Gmail.start(:normal, %{client_id: "", client_secret: ""})
      # Gmail.Supervisor
      # Starts a worker by calling: GmailPoc.Worker.start_link(arg)
      # {GmailPoc.Worker, arg},
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: GmailPoc.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    GmailPocWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
