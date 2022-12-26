import Config

config :my_parser, :ecto_repos, [MyParser.Repo]

import_config "#{Mix.env}.exs"
