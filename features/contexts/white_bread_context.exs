defmodule WhiteBreadContext do
  use WhiteBread.Context

  alias Rentit.{Repo, Plant}
#   use Hound.Helpers
  
#   feature_starting_state fn  ->
#     Application.ensure_all_started(:hound)
#     %{}
#   end
#   scenario_starting_state fn _state ->
#     Hound.start_session
#     Ecto.Adapters.SQL.Sandbox.checkout(Rentit.Repo)
#     Ecto.Adapters.SQL.Sandbox.mode(Rentit.Repo, {:shared, self()})
#     %{}
#   end
#   scenario_finalize fn _status, _state -> 
#     Ecto.Adapters.SQL.Sandbox.checkin(Rentit.Repo)
#     # Hound.end_session
#     nil
# end
  
  given_ ~r/^the following plants are in the data base$/, fn state, %{table_date: table} ->
    table
    |> Enum.map(fn plant_data -> Plant.changeset(%Plant{}, plant_data) end)
    |> Enum.each(fn changeset -> Repo.insert!(changeset) end)
    {:ok, state}
  end

  and_ ~r/^I want to see details of one name "(?<argument_one>[^"]+)"$/,
  fn state, %{argument_one: _argument_one} ->
    {:ok, state}
  end

  and_ ~r/^I open Rentit' web page$/, fn state ->
    {:ok, state}
  end

  and_ ~r/^I enter the name, startdate, enddate$/, fn state ->
    {:ok, state}
  end

  and_ ~r/^I submit the request$/, fn state ->
    {:ok, state}
  end

  and_ ~r/^I should receive a confirmation message with a list of plan        $/, fn state ->
    {:ok, state}
  end

  when_ ~r/^I click to select on the corresponding plant$/, fn state ->
    {:ok, state}
  end

  then_ ~r/^I should see the details of the plant$/, fn state ->
    {:ok, state}
  end

  and_ ~r/^I want to search for "(?<argument_one>[^"]+)" from "(?<argument_two>[^"]+)" to "(?<argument_three>[^"]+)"$/,
  fn state, %{argument_one: _argument_one,argument_two: _argument_two,argument_three: _argument_three} ->
    {:ok, state}
  end

  then_ ~r/^I should receive a confirmation message with a list of plan$/, fn state ->
    {:ok, state}
  end

end
