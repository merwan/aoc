defmodule Aoc do
  @moduledoc """
  Documentation for Aoc.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Aoc.hello()
      :world

  """
  def hello do
    :world
  end

  def day1 do
    File.stream!("priv/2019/day01.in")
    |> Stream.map(&(String.trim(&1)))
    |> Stream.map(&(String.to_integer(&1)))
    |> Stream.map(fn x -> 
      Integer.floor_div(x, 3) - 2
    end)
    |> Enum.sum
  end
end
