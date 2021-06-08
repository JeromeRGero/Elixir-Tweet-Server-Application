defmodule MyFirstApp.FileReader do
  @moduledoc """
  This fuction will take the path to the file and find
  the string(s) that can be tweeted out from there,
  where every line is a seperate tweet.any()

  It will trim all the strings, and then eliminate any
  strings that are larger than 140 characters.
"""
@doc """
  Get a string to tweet.

  iex> MyFirstApp.FileReader.get_strings_to_tweet("priv/test/too_long.txt")
  "short line"
"""
  def get_strings_to_tweet(path) do
    File.read!(path)
    |> pick_string
  end

  def pick_string(str) do
    str
    |> String.split("\r\n")
    |> Enum.map(&String.trim/1)
    |> Enum.filter(&String.length(&1) <= 140)
    |> Enum.random()
  end
end
