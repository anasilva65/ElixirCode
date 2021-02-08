defmodule Cards do
  @moduledoc """
  Provides methods for creating and handling a deck of cards
  """
  @doc """
  Returns a list of strings representing a deck of playing cards
  """
  def create_deck do
      values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    cards = for value <- values do
    for suit <- suits do
      "#{value} of #{suit}"

    end
  end

  List.flatten(cards)
  end


  def shuffle(deck) do
    Enum.shuffle(deck)
      end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  @doc """
  Divides a deck into a hand and the remainder of the deck.
  The `hand_size` argument indicates how many cards should

  ##Examples
  iex> deck = Cards.create_deck
  iex> {hand, deck} = Cards.deal(deck, 1)
  iex> hand
  ["Ace of Spades"]
  """



  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  def load (filename) do
    {status, binary} = File.read(filename)

    case status do
      :ok -> :erlang.binary_to_term binary
      :error -> "That file does not exist"
    end

  end

  def create_hand(hand_size) do
    Cards.create_deck
    |> Cards.shuffle
    |> Cards.deal(hand_size)
  end
end
