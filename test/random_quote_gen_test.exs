defmodule RandomQuoteGenTest do
  use ExUnit.Case
  doctest RandomQuoteGen

  test "greets the world" do
    assert RandomQuoteGen.hello() == :world
  end
end
