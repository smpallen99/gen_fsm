defmodule GenFsm.Mixfile do
  use Mix.Project

  def project do
    [app: :gen_fsm,
     version: "1.0.1",
     elixir: "~> 1.0",
     deps: deps()]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    []
  end
end
