use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :rentit, RentitWeb.Endpoint,
  http: [port: 4001],
  server: true

# Print only warnings and errors during test
config :logger, level: :warn
config :hound, driver: "chrome_drive"
config :white_bread, sql_sandbox: true

# Configure your database
config :rentit, Rentit.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "rentit_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
