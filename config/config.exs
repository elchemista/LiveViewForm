# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :lv_form, LvFormWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "iCdtGScKFyIxZEtEGZqgzYOvSdE51MR0elIO7/tITYkwmKwQuFYpzccK2m01fg/K",
  render_errors: [view: LvFormWeb.ErrorView, accepts: ~w(html json)],
  live_view: [
    signing_salt: "KK4ly8HdzOmhsB+2itWau5xYDIPW8ctk"
  ],
  pubsub: [name: LvForm.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :phoenix,
  template_engines: [leex: Phoenix.LiveView.Engine]


# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
