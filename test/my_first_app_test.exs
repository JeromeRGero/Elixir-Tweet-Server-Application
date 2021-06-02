defmodule MyFirstAppTest do
  use ExUnit.Case
  doctest MyFirstApp

  @tag default: true
  test "greets the world" do
    assert MyFirstApp.hello() == :world
  end

  @tag default: true
  test "another test" do
    assert 2 + 2 == 4
  end
end
