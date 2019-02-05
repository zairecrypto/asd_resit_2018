
alias Rentit.{Repo, Plant}

[
    %{name: "Excavator", description: "15 Tone Mini excavator", price: "150.00", startdate: "2017-02-28", enddate: "2017-12-18"},
    %{name: "Excavator", description: "5 Tone Mini excavator", price: "10.00", startdate: "2018-12-28", enddate: "2019-12-16"},
    %{name: "Robocop", description: "8 Tone Mini excavator", price: "190.00", startdate: "2016-05-28", enddate: "2017-12-14"},
    %{name: "Excavator", description: "10 Tone Mini excavator", price: "350.00", startdate: "2016-12-28", enddate: "2017-12-19"},
    %{name: "Robocop", description: "3 Tone Mini excavator", price: "200.00", startdate: "2015-08-28", enddate: "2017-12-28"}
]
|> Enum.map(fn plant_data -> Plant.changeset(%Plant{}, plant_data) end)
|> Enum.each(fn changeset -> Repo.insert!(changeset) end)
