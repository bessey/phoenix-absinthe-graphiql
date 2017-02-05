# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :absinthe_react,
  ecto_repos: [AbsintheReact.Repo]

# Configures the endpoint
config :absinthe_react, AbsintheReact.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Hc1A74zrtssCvXmHeGZ9GfGJ8oz7p0ObsrtjXQLeqfNQLVo+RWoE/+jt/V1le9W7",
  render_errors: [view: AbsintheReact.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AbsintheReact.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
