defmodule Discuss.Topic do
  use Ecto.Schema
  import Ecto.{Query, Changeset}

  schema "topics" do
    field :title, :string
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end

end

