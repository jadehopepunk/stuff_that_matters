# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :stuff_that_matters,
  ecto_repos: [StuffThatMatters.Repo]

# Configures the endpoint
config :stuff_that_matters, StuffThatMatters.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LPx/XNl+oPHGWA+akMmGZ/jYvmRCaTr/vhkbwxWnAQb7+0HsA2a0Vosdw1Boq6cy",
  render_errors: [view: StuffThatMatters.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: StuffThatMatters.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
