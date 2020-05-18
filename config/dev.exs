import Config

config :data_store, DataStore.Repo,
  database: "with_me_dev",
  username: "neo",
  password: "",
  hostname: "localhost",
  show_sensitive_data_on_connection_error: true

config :master_proxy,
  http: [port: 4000],
  backends: [
    %{
      host: ~r{^collaborate\.lvh.me$},
      phoenix_endpoint: CollaborateWeb.Endpoint
    },
    %{
      host: ~r{^meet\.lvh.me$},
      phoenix_endpoint: MeetWeb.Endpoint
    },
    %{
      host: ~r{^account\.lvh.me$},
      phoenix_endpoint: AccountWeb.Endpoint
    },
    %{
      host: ~r{^slide.lvh\.me$},
      phoenix_endpoint: SlideWeb.Endpoint
    },
    %{
      host: ~r{localhost$},
      phoenix_endpoint: SlideWeb.Endpoint
    }
  ]
