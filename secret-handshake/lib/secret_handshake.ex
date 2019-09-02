use Bitwise

defmodule SecretHandshake do
  @doc """
  Determine the actions of a secret handshake based on the binary
  representation of the given `code`.

  If the following bits are set, include the corresponding action in your list
  of commands, in order from lowest to highest.

  1 = wink
  10 = double blink
  100 = close your eyes
  1000 = jump

  10000 = Reverse the order of the operations in the secret handshake
  """
  @spec commands(code :: integer) :: list(String.t())
  def commands(code) do
  	actions = %{
  		1 => "wink",
  		2 => "double blink",
  		4 => "close your eyes",
  		8 => "jump"
  	}

  	reverse_order? = (16 &&& code) != 0
  	Enum.reduce(actions, [], fn {k, v}, acc -> 
  		case code &&& k do
  			0 -> acc
  			_ when reverse_order? -> [v] ++ acc
  			_ when not reverse_order? -> acc ++ [v]
  		end
  	end)
  end
end
