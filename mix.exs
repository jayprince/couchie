defmodule Couchie.Mixfile do
  use Mix.Project
  @moduledoc """
   Mixfile for the Couchie.

   Designed to be a dependency in other projects.
   """

  @doc "Project Details"
  def project do
    [ app: :couchie,
      version: "0.0.1",
      deps: deps ]
  end

  @doc "Configuration for the OTP application"
  def application do
    [
		 applications: [:cberl] #, :ibrowse
	 ]
  end

  # Returns the list of dependencies in the format:
  # {:erlmc, "0.1", git: "https://github.com/n1rvana/erlmc.git"}
  defp deps do
    [
		  {:cberl, github: "chitika/cberl"}, #chitika is authoritative source
      {:jazz, github: "devinus/jazz", branch: "0.13"}
      # {:jazz, github: "meh/jazz"}
    ]
  end
end
