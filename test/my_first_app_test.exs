defmodule MyFirstAppTest do
  use ExUnit.Case
  doctest MyFirstApp

  test "greets the world" do
    assert MyFirstApp.hello() == :world
  end
end
