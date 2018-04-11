defmodule Harfleur.Mixfile do
  use Mix.Project

  def project do
    [app: :harfleur,
     version: "0.1.0",
     elixir: "~> 1.5",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     package: package(),
     description: "A Plug that adds legth hiding strategy",
     source_url: "https://github.com/iwantmyname/harfleur"
   ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:plug, :logger]]
  end

  
  defp deps do
    [ {:plug, "~> 1.5"}]
  end

  def package do
    %{
      maintainers: ["'Ley Missailidis", "Dave Cottlehuber"],
      licenses: ["MIT"],
      links: %{
        "GitHub": "https://github.com/iwantmyname/harfleur"
      }
    }
  end

end
