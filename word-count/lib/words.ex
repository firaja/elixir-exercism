defmodule Words do

  @non_words ~r/[\s,\!\&\/\%\@\:\_\$\^\?]+/


  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
  	sentence
    |> String.downcase()
  	|> String.split(@non_words, trim: true)
    |> Enum.reduce(%{}, fn word, acc -> Map.update(acc, word, 1, fn x -> x + 1 end) end)
  end


end
