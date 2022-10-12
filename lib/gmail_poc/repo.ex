defmodule GmailPoc.Repo do
  use Ecto.Repo,
    otp_app: :gmail_poc,
    adapter: Ecto.Adapters.Postgres
end
