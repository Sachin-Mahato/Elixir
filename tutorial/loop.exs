defmodule Loops do
  def main do
    do_stuff()
  end

  def do_stuff do
    IO.puts "Sum : #{sum([1,2,3,4,5])}"
  end

  def sum([]), do: 0

  def  sum([h|t]), do: h + sum(t)




end
