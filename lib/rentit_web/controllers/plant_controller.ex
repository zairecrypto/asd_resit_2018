defmodule RentitWeb.PlantController do
  use RentitWeb, :controller
  import Ecto.Query, only: [from: 2]

  alias Rentit.Repo
  alias Rentit.Plant

  def index(conn, _params) do
    changeset = Plant.changeset(%Plant{}, %{})
    render conn, "index.html", changeset: changeset
  end

  def create(conn, %{"plant" => plant_params}) do
    # IO.inspect plant_params["name"]
    if String.equivalent?(plant_params["name"], "") do
      changeset = Plant.changeset(%Plant{}, %{})
      # put_flash(conn, :info, "User created successfully.") 
      render conn, "index.html", changeset: changeset
    else
      name = plant_params["name"]
      query = from t in Plant,
              where: t.name == ^name

      plants = Repo.all(query)
      # put_flash(conn, :info, "User created successfully.") 
      render(conn, "update.html", plants: plants)


      
    end

  end



  def show(conn, %{"id" => id}) do
    plant = Repo.get!(Plant, id)
    render(conn, "show.html", plant: plant)
  end
end

