defmodule GmailPocWeb.PageController do
  # @derive {Jason.Encoder}
  use GmailPocWeb, :controller

  def verify(conn, params) do
    IO.inspect params
    conn
    |> put_status(200)
    |> render("default.json", data: %{data: params})
  end

  def index(conn, params) do
    %{
      "code" => code,
      "scope" => scope,
      "state" => state
    } = params
      IO.inspect code


      {:ok, %{body: token}} =  HTTPoison.request(
      :post,
      "https://oauth2.googleapis.com/token",
      Jason.encode!(%{
        "client_id" => "423331183320-k423g7r5ol8n2vtj0d02rnp4k16u8d3p.apps.googleusercontent.com",
        "client_secret" => "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",
        "code" => code,
        "grant_type" => "authorization_code",
        "redirect_uri" => "http://localhost:4003/oauth"
        }),
      %{},[])

      IO.inspect Jason.decode(token), label: "response"
      conn
      |> put_status(200)
      |> render("default.json", data: %{data: token})
  end
end
