use Mix.Config

config :phoenix, :serve_endpoints, true

config :master_proxy,
  http: [port: 80],
  backends: [
    %{
      host: ~r{^collaborate\.with-me\.live$},
      phoenix_endpoint: CollaborateWeb.Endpoint
    },
    %{
      host: ~r{^slide\.with-me\.live$},
      phoenix_endpoint: SlideWeb.Endpoint
    },
    %{
      host: ~r{^meet\.with-me\.live$},
      phoenix_endpoint: MeetWeb.Endpoint
    },
    %{
      host: ~r{^account\.with-me\.live$},
      phoenix_endpoint: AccountWeb.Endpoint
    },
    %{
      host: ~r{with-me\.live$},
      phoenix_endpoint: CollaborateWeb.Endpoint
    }
  ]
