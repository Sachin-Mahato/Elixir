defmodule Structs do
    defstruct name: "", country: ""
    # alias Structs

    @type t :: %Structs{
        name: String.t(),
        country: String.t()
    }

    def all do
    [
      %Structs{name: "Great Wall of China", country: "China"},
      %Structs{name: "Petra", country: "Jordan"},
      %Structs{name: "Christ the Redeemer", country: "Brazil"},
      %Structs{name: "Machu Picchu", country: "Peru"},
      %Structs{name: "Chichen Itza", country: "Mexico"},
      %Structs{name: "Roman Colosseum", country: "Italy"},
      %Structs{name: "Taj Mahal", country: "India"}
    ]
    end

    def print_name(wonders) do
        # Enum.each(wonders, fn %{name: name} -> IO.puts(name)   end)
        wonders |> Enum.each(fn %{name: name} -> IO.puts(name)  end)
    end

    def filter_by_country(wonders, country) do
      wonders
       |> Enum.filter(fn %{country: country_name} -> country_name == country  end)
       |> print_name()
    end

    def in_country_starting_with_i(wonders) do
      wonders
      |> Enum.filter(fn %{country: country} -> String.starts_with?(country, "i") end)
    end

    def sort_by_length(wonders) do
      wonders
      |> Enum.sort(fn (x,y) -> String.length(x.country) < String.length(y.country)  end)
    end

    def name_country_list(wonders) do
     Enum.reduce(wonders, [], fn (wonder, acc) -> [[wonder.name, wonder.country | acc]] end)
    end

end

Structs.print_name(Structs.all())
Structs.filter_by_country(Structs.all(), "India")
|> Enum.each(fn %{name: name} -> IO.puts(name) end)

Structs.in_country_starting_with_i(Structs.all())
