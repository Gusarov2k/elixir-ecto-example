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
``elixir
def start(_type, _args) do
    # add ecto to supervisor
    children = [
      MyParser.Repo
    ]
end
```
