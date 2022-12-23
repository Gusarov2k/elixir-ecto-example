defmodule MyParser.Repo do
  use Ecto.Repo, otp_app: :my_parser, adapter: Ecto.Adapters.Postgres
end
