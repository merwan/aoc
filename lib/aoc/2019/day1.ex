defmodule Aoc201901 do
  def run do
    Aoc.Reader.lines(2019, 1)
    |> Stream.map(&(String.to_integer(&1)))
    |> Stream.map(fn x ->
      Integer.floor_div(x, 3) - 2
    end)
    |> Enum.sum
  end
end
