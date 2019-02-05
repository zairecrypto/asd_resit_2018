defmodule Rentit.Plant do
  use Ecto.Schema
  import Ecto.Changeset


  schema "plants" do
    field :description, :string
    field :name, :string
    field :price, :string

    timestamps()
  end

  @doc false
  def changeset(plant, attrs) do
    plant
    |> cast(attrs, [:name, :description, :price])
    |> validate_required([:name, :description, :price])
  end
end
