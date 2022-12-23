# MyParser

**TODO: Add description**

## Installation

Create new repo with sup
```cmd
mix new my_parser --sup
```

add new library
```elixir
defp deps do
  [
    {:ecto_sql, "~> 3.1"},
    {:postgrex, ">= 0.0.0"}
  ]
end
```
download deps
```cmd
mix deps.get
```

create lib/my_parser/repo.ex

create config for db connection

add Repo to supervisor
```elixir
def start(_type, _args) do
    # add ecto to supervisor
    children = [
      MyParser.Repo
    ]
end
```

# Query
```elixir
  import Ecto.Query

  MyParser.Repo.query("SELECT * FROM organizations")
```
get_org = from o in "organizations", where: o.eo_id == 444, select: o.eo_id

MyParser.Repo.one(get_org)
Ecto.Adapters.SQL.explain(MyParser.Repo, :all, get_org) >| IO.puts
