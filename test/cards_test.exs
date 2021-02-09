defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "espero que um mais um seja diferente de tres" do

    assert 1 + 1 != 3
  end

  test "espero que um mais um seja igual a dois" do
    assert 1 + 1 == 2
  end

  test "ter a certeza que um deck cria 20 cards diferentes" do
    deck_length = length(Cards.create_deck)
    assert deck_length == 20
  end


end
