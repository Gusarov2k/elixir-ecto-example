defmodule MyParser.Organization do
  use Ecto.Schema

  import Ecto.Query

  # import Ecto.Changeset

  # alias MyParser.{Organization, Repo}

  # @primary_key {:id, :binary_id, autogenerate: true}
  schema "organizations" do
    field :eo_id, :integer
    field :full_name, :string
    field :short_name, :string
    # field :number, :string
    # has_many :tasks, Task
  end

  # def changeset(project, params) do
  #   project
  #   |> cast(params, ~w[title description]a)
  #   # |> cast_assoc(:tasks, with: &Task.changeset/2)
  #   |> validate_required(~w[title]a)
  # end
end
