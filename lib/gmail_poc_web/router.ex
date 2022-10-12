defmodule GmailPocWeb.Router do
  use GmailPocWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", GmailPocWeb do
    pipe_through :browser

    get "/oauth", PageController, :index
    get "/oauth-verify", PageController, :verify
  end

  # Other scopes may use custom stacks.
  # scope "/api", GmailPocWeb do
  #   pipe_through :api
  # end
end
