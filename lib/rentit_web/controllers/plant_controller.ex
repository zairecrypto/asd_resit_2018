defmodule RentitWeb.PlantController do
  use RentitWeb, :controller

  alias Rentit.Repo
  alias Rentit.Plant

  def index(conn, _params) do
    changeset = Plant.changeset(%Plant{}, %{})
    render conn, "index.html", changeset: changeset
  end

  def create(conn, %{"plant" => plant_params}) do
    # plant_params = %{"end" => "qsdqsdqsd", "name" => "qsdq", "start" => "qsd"}
    plants = Repo.all(Plant)
    IO.inspect plants
    render(conn, "show.html", plants: plants)
  end

  def show(conn, %{"id" => id}) do
    plant = Repo.get!(Plant, id)
    render(conn, "show.html", plant: plant)
  end
end

