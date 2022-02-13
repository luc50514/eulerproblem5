defmodule Eulerproblem5 do
  @moduledoc """
  Documentation for `Eulerproblem5`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Eulerproblem5.hello()
      :world

  """
  def hello do
    :world
  end

  def getsmallestnumber(input) do
    sortednumbers = Enum.sort( input, :asc )
    getmultiplylistofnumbers(sortednumbers)

  end

  def getmultiplylistofnumbers(numbertogetlistfrom) do
    [firstnumber | lastnumber] = numbertogetlistfrom
    [firstoflast | _lastoflast] = lastnumber
    Enum.reduce(firstnumber..firstoflast, fn(first,next) -> first*next end)
  end

  def getlistofnumbers(numbertogetlistfrom) do
    [firstnumber | lastnumber] = numbertogetlistfrom
    [firstoflast | _lastoflast] = lastnumber
    for numberslist <- firstnumber..firstoflast do
      numberslist
    end
  end

  def getprimesfactorslist(listofnumbers) do
    for primenumbers <- getlistofnumbers(listofnumbers) do
      Primes2.get(primenumbers)
    end
  end

  def multiplynumberstogether(firstnumber) do
    listofnumbers = Enum.to_list firstnumber..2
    _solve(firstnumber+1,listofnumbers, firstnumber)
  end

  defp _solve(n, [], _), do: n

  defp _solve(n, [h | t],firstnumber) do
    listofnumbers = Enum.to_list firstnumber..2
    case rem(n, h) do
      0 -> _solve(n, t, firstnumber)
      _ -> _solve(n+1, listofnumbers, firstnumber )
    end

  end
end
