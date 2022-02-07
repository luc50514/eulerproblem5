defmodule Primes2 do
  @moduledoc """
  Documentation for `Primes2`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Primes2.hello()
      :world

  """
  def hello do
    :world
  end
  def get(n) do
    get(n, [], 2) |> Enum.sort
  end

  defp get(n, primefactor, divisor) when rem(n, divisor) == 0 do
    get(div(n, divisor), [divisor|primefactor], divisor)
  end

  defp get(n, primefactor, divisor) when n > 1 do
    get(n, primefactor, divisor + 1)
  end

  defp get(_n, primefactor, _divisor), do: primefactor

end
