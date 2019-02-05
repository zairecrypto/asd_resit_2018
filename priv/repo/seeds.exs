
alias Rentit.{Repo, Plant}

[%{name: "Excavator", description: "15 Tone Mini excavator", price: "150.00"},
%{name: "Excavator", description: "3 Tone Mini excavator", price: "200.00"}]
|> Enum.map(fn plant_data -> Plant.changeset(%Plant{}, plant_data) end)
|> Enum.each(fn changeset -> Repo.insert!(changeset) end)
