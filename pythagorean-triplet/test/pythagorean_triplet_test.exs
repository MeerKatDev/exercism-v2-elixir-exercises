defmodule PythagoreanTripletTest do
  use ExUnit.Case

  # @tag :pending
  test "sum" do
    triplet = [3, 4, 5]
    assert Triplet.sum(triplet) == 12
  end

  # @tag :pending
  test "product" do
    triplet = [3, 4, 5]
    assert Triplet.product(triplet) == 60
  end

  # @tag :pending
  test "pythagorean" do
    triplet = [3, 4, 5]
    assert Triplet.pythagorean?(triplet)
  end

  # @tag :pending
  test "not pythagorean" do
    triplet = [5, 6, 7]
    refute Triplet.pythagorean?(triplet)
  end

  # @tag :pending
  test "triplets up to 10" do
    triplets = Triplet.generate(1, 10)
    assert Enum.map(triplets, &Triplet.product/1) == [60, 480]
  end

  @tag :pending
  test "triplets from 11 up to 20" do
    triplets = Triplet.generate(11, 20)
    assert Enum.map(triplets, &Triplet.product/1) == [3840]
  end

  @tag :pending
  test "triplets where sum is 180 and max factor is 100" do
    triplets = Triplet.generate(1, 100, 180)
    assert Enum.map(triplets, &Triplet.product/1) == [118_080, 168_480, 202_500]
  end
end
