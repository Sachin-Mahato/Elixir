defmodule Functions do
  def main do
    do_stuff()
  end

  # def do_stuff  do
    # get_sum = fn (x,y) -> x+y  end
    # IO.puts "5 + 5 = #{get_sum.(5,5)}"
  # end

  # recursion

  def do_stuff do
    IO.puts "Factorials of : #{fact(4)}"
  end

  def fact(x) do
    if x <= 1 do
      1
    else
      res = x * fact(x - 1)
      res
    end

  end


end

Functions.main()
