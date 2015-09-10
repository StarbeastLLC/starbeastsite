# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :starbeast, Starbeast.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "PUoh4/JbEMPfZ83DDIGFyKkVHR/IK0rmcU+Ii8iqnl8wo8vJJLwGOVQ+DHImYGeZ",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: Starbeast.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Mailgun credentials
config :starbeast, 
  mailgun_domain: "https://api.mailgun.net/v3/sandbox9ddf700296ad4bf0a817cedfe2a09d99.mailgun.org",
  mailgun_key: "key-0c056f5ddfd814fe0e9a1b831c26b561" # Maybe change to env var?

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
