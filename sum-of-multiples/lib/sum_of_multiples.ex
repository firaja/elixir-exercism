defmodule SumOfMultiples do
  @doc """
  Adds up all numbers from 1 to a given end number that are multiples of the factors provided.
  """
  @spec to(non_neg_integer, [non_neg_integer]) :: non_neg_integer
  def to(limit, factors) do
  	1..(limit - 1)
  	|> Enum.filter(fn x -> is_multile?(x, factors) end)
  	|> Enum.sum
  end

  defp is_multile?(x, factors) do
  	Enum.any?(factors, fn y -> rem(x, y) == 0 end)
  end
  
end
