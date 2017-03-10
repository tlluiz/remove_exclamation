defmodule RemoveExclamationTest do
  use ExUnit.Case

  test "1" do
    assert RemoveExclamation.remove("Hello World!") == "Hello World"
  end

  test "2" do
    assert RemoveExclamation.remove("Hello World!!!") == "Hello World"
  end

  test "3" do
    assert RemoveExclamation.remove("Hi! Hello!") == "Hi Hello"
  end

  test "4" do
    assert RemoveExclamation.remove("") == ""
  end

  test "5" do
    assert RemoveExclamation.remove("Oh, no!!!") == "Oh, no"
  end
end
