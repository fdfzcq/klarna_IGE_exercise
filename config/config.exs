# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :klarna_ige_exercise,
  namespace: KlarnaIGEExercise,
  ecto_repos: [KlarnaIGEExercise.Repo]

# Configures the endpoint
config :klarna_ige_exercise, KlarnaIGEExerciseWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "FUoG4tUVCm8LZzEScvJ2iRlSMdZph/8Q4D0SCs2rHt7tYhcUDVTgS0ABxf6cLH2Y",
  render_errors: [view: KlarnaIGEExerciseWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: KlarnaIGEExercise.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
