defmodule ExAzureSpeech.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_azure_speech,
      version: "0.1.0",
      elixir: "~> 1.16",
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
      {:fresh, "~> 0.4"},
      {:jason, "~> 1.4"},
      {:mint, "~> 1.5"},
      {:elixir_uuid, "~> 1.2"}
    ]
  end
end
