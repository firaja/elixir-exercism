defmodule RomanNumerals do

  @translation [
  	{"M",  1000},
    {"CM", 900},
    {"D",  500},
    {"CD", 400},
    {"C",  100},
    {"XC", 90},
    {"L",  50},
    {"XL", 40},
    {"X",  10},
    {"IX", 9},
    {"V",  5},
    {"IV", 4},
    {"I",  1}
  ]

  
  def numeral(number) when number <= 0 do
  	""
  end

  def numeral(number) when number > 3000 do
  	numeral(3000)
  end

  @doc """
  Convert the number to a roman number.
  """
  @spec numeral(pos_integer) :: String.t()
  def numeral(number) do
  	{symbol, delta} = Enum.find(@translation, fn {_, delta} -> number >= delta end)
  	"#{symbol}#{numeral(number - delta)}"
  end

end
