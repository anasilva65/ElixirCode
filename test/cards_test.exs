defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "greets the world" do
    assert Cards.hello() == :world

    assert Cards.shuffle(deck) == ["Ace", "Two", "Three"]
  end
end
