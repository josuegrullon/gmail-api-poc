use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :gmail_poc, GmailPocWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :gmail_poc, GmailPoc.Repo,
  username: "postgres",
  password: "postgres",
  database: "gmail_poc_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
