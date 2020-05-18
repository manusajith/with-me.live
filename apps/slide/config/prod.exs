use Mix.Config

config :slide, SlideWeb.Endpoint,
  url: [host: "slide.with-me.live", port: 80],
  cache_static_manifest: "priv/static/cache_manifest.json"

config :logger, level: :info
