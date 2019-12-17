defmodule Aoc.Reader do
  def lines(year, day) do
    filename(year, day)
    |> File.stream!
    |> Stream.map(&String.trim/1)
  end

  defp filename(year, day) do
    day = format(day)
    "priv/#{year}/day#{day}.in"
  end

  defp format(day) do
    day
    |> Integer.to_string
    |> String.pad_leading(2, "0")
  end
end
