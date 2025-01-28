defmodule ObliqueStrategies.MixProject do
  use Mix.Project

  def project do
    [
      app: :oblique_strategies,
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "Over one hundred worthwhile dilemmas",
      package: package(),
      source_url: "https://github.com/glhrmv/oblique_strategies",
      homepage_url: "https://github.com/glhrmv/oblique_strategies",
      docs: [
        main: "ObliqueStrategies",
        extras: ["README.md"]
      ]
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
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp package do
    [
      maintainers: ["glhrmv"],
      licenses: ["Unlicense"],
      links: %{
        "GitHub" => "https://github.com/glhrmv/oblique_strategies"
      }
    ]
  end
end
