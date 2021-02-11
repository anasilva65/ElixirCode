defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "ter a certeza que um deck cria 20 cards diferentes" do
    deck_length = length(Cards.create_deck)
    assert deck_length == 20
  end



end
