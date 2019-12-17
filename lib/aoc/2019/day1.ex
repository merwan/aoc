defmodule Aoc201901 do
  def run do
    Aoc.Reader.lines(2019, 1)
    |> Stream.map(&String.to_integer/1)
    |> Stream.map(&required_fuel/1)
    |> Enum.sum()
  end

  defp required_fuel(mass), do: Integer.floor_div(mass, 3) - 2
end
