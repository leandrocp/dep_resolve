defmodule DepResolve.MixProject do
  use Mix.Project

  def project do
    [
      app: :dep_resolve,
      version: "0.1.0",
      elixir: "~> 1.12",
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
      {:chromic_pdf, "~> 1.1"},
      {:telemetry, "~> 0.4 or ~> 1.0"},
      {:telemetry_poller, "~> 0.5"}
    ]
  end

end
