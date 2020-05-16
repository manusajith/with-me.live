defmodule Proxy.MixProject do
  use Mix.Project

  def project do
    [
      app: :proxy,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Proxy.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:phoenix, "~> 1.5.1"},
      {:plug_cowboy, "~> 2.0"},
      {:jason, "~> 1.0"},
      {:collaborate, in_umbrella: true},
      {:account, in_umbrella: true}
    ]
  end
end
