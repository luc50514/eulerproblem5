defmodule Eulerproblem5Test do
  use ExUnit.Case
  doctest Eulerproblem5

  test "greets the world" do
    assert Eulerproblem5.hello() == :world
  end

  test "When 1 to 1 is given then 1 should be returned" do
    assert Eulerproblem5.getsmallestnumber([1,1]) == 1
  end

  test "When 2 to 1 is given then 1 should be returned" do
    assert Eulerproblem5.getsmallestnumber([2,1]) == 2
  end

  test "When 3 to 1 is given then 1 should be returned" do
    assert Eulerproblem5.getsmallestnumber([3,1]) == 6
  end
  test "When 3 to 1 is given number from 3 to 1 is return" do
    assert Eulerproblem5.getmultiplylistofnumbers([3,1]) == 6
  end

  test "When 3 to 1 is given list of numbers [3,2,1] is returned" do
    assert Eulerproblem5.getlistofnumbers([3,1]) == [3,2,1]
  end

  test "When 20 to 1 is given list of numbers [20..1] is returned" do
    assert Eulerproblem5.getlistofnumbers([20,1]) == [20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1]
  end
  test "when 2 should return [2]" do
    assert Primes2.get(2) == [2]
  end

  test "when 3 should return [3]" do
    assert Primes2.get(3) == [3]
  end

  test "when 4 should return [2,2]" do
    assert Primes2.get(4) == [2,2]
  end

  test "when 6 whould return [2,3]" do
    assert Primes2.get(6) == [2,3]
  end

  test "when 8 should return [2,2,2]" do
    assert Primes2.get(8) == [2,2,2]
  end

  test "when 9 should return [3,3]" do
    assert Primes2.get(9) == [3,3]
  end

  test "when 2*7*7*11*17 should return [2,7,7,11,17]" do
    assert Primes2.get(2*7*7*11*17) == [2,7,7,11,17]
  end

  test "when 13195 should return [5, 7, 13, 29]" do
    assert Primes2.get(13195) == [5,7,13,29]
  end

  test "when 600851475143 should return [71, 839, 1471, 6857]" do
    assert Primes2.get(600851475143) == [71, 839, 1471, 6857]
  end

  test "when given [10,1] should return prime factors of 10 to 1" do
    assert Eulerproblem5.getprimesfactorslist([10,1]) == [[2,5],[3,3],[2,2,2],[7],[2,3],[5],[2,2],[3],[2],[]]
  end
end
