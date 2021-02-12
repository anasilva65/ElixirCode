defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "ter a certeza que um deck cria 20 cards diferentes" do
    deck_length = length(Cards.create_deck)
    assert deck_length == 20
  end

  #test "verificar se realmente o deck está sendo embaralhado aleatoriamente" do
    #deck = Cards.create_deck
    #assert deck != Cards.shuffle(deck)
  #end

  test "verificar se realmente o deck está sendo embaralhado aleatoriamente" do
    deck = Cards.create_deck
    refute deck == Cards.shuffle(deck)
  end

  test "Determina se o baralho contém uma determinada carta." do
    deck = Cards.create_deck
    assert deck = Cards.contains?(deck, "Ace of Spades")
  end

  test "verificar se está dividindo o baralho, e fazendo a correspondencia para atribuicao de variavel " do
    deck = Cards.create_deck
    assert {hand, deck} = Cards.deal(deck, 2)
  end
end
