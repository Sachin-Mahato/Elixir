

defmodule Solution do
  @spec final_value_after_operations(operations :: [String.t]) :: integer
  def final_value_after_operations(operations) do

    Enum.reduce(operations,0,fn x, acc ->
      if String.contains?(x, "++") do
        acc + 1
      else
        acc - 1
      end
      end)
  end
end


IO.puts Solution.final_value_after_operations([["--X","X++","X++"]])
