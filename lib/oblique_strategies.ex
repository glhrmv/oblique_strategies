defmodule ObliqueStrategies do
  @moduledoc """
  Provides access to the Oblique Strategies cards.
  """

  @cards File.read!(
           Path.join(
             :code.priv_dir(:oblique_strategies),
             "strategies.json"
           )
         )
         |> JSON.decode!()

  @doc """
  Returns all strategies as a list of strings.
  """
  def all do
    @cards
  end

  @doc """
  Draws a random strategy from the list.
  """
  def draw do
    Enum.random(@cards)
  end

  @doc """
  Returns the preamble (instructions) card.
  """
  def preamble do
    ~s"""
    These cards evolved from our separate observations on the principles \
    underlying what we were doing. Sometimes they were recognized in retrospect \
    (intellect catching up with intuition), sometimes they were identified as \
    they were happening, sometimes they were formulated.

    They can be used as a pack (a set of possibilities being continuously reviewed \
    in the mind) or by drawing a single card from the shuffled pack when a dilemma \
    occurs in a working situation. In this case, the card is trusted even if its \
    appropriateness is quite unclear. They are not final, as new ideas will \
    present themselves, and others will become self-evident.
    """
  end
end
