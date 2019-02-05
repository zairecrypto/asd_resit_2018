defmodule Rentit.Plant do
  use Ecto.Schema
  import Ecto.Changeset


  schema "plants" do
    field :description, :string
    field :name, :string
    field :startdate, :string
    field :enddate, :string
    field :price, :string

    timestamps()
  end

  @doc false
  def changeset(plant, attrs) do
    plant
    |> cast(attrs, [:name, :description, :price, :startdate, :enddate])
    |> validate_required([:name, :description, :price, :startdate, :enddate])
  end
end
