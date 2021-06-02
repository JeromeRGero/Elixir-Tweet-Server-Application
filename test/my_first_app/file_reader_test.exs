defmodule FileReaderTest do
  use ExUnit.Case
  import MyFirstApp.FileReader

  test "Passing a file should return a String" do
    str =
      get_strings_to_tweet(
      Path.join("#{:code.priv_dir(:my_first_app)}", "test.txt")
      )

    assert str != nil
  end

  test "Will not return a String longer than 140 char." do
    str =
      get_strings_to_tweet(
      Path.join("#{:code.priv_dir(:my_first_app)}", "test/too_long.txt")
      )

    assert str == "short line"
  end

  test "An empty string should return an empty string" do
    str =
      pick_string("")

    assert str == "";
  end

end
