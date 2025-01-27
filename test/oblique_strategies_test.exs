defmodule ObliqueStrategiesTest do
  use ExUnit.Case
  doctest ObliqueStrategies

  test "all/0 returns all strategies as a non-empty list of strings" do
    strategies = ObliqueStrategies.all()

    assert is_list(strategies)
    assert length(strategies) > 0
    assert Enum.all?(strategies, &is_binary/1)
  end

  test "draw/0 returns a random strategy from the list" do
    strategy = ObliqueStrategies.draw()

    assert is_binary(strategy)
    assert strategy in ObliqueStrategies.all()
  end

  test "preamble/0 contains key phrases" do
    preamble = ObliqueStrategies.preamble()

    assert String.contains?(preamble, "These cards evolved")
    assert String.contains?(preamble, "principles underlying")
    assert String.contains?(preamble, "They are not final")
  end
end
