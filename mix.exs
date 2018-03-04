defmodule FluxAdapters.MixProject do
  use Mix.Project

  def project do
    [
      app: :flux_adapters,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug, "~> 1.3.3 or ~> 1.4"},
      {:flux, path: "../Flux"}
    ]
  end
end