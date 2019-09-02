defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
  	sentence
  	|> String.split(~r/[\s,\!\&\/\%\@\:\_\$\^\?]+/, trim: true)
	|> Enum.reduce(%{}, fn element, acc -> Map.update(acc, String.downcase(element), 1, fn x -> x + 1 end) end)
  end
end
