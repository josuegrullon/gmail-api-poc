defmodule GmailPocWeb.DefaultView do
  use GmailPocWeb, :view

  def render("default.json", %{data: data}) do
    data
  end
end