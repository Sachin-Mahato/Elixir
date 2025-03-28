defmodule Tuples do
  def main do
    do_stuff()
  end

  # Tuples are similar to array

  def do_stuff do
    # Create a tuple
    my_stats = {173, 6.24, :Sachin}
    IO.puts("Is it a tuple? #{is_tuple(my_stats)}")

    # Add an element to the tuple
    my_stats2 = Tuple.append(my_stats, 24)
    IO.puts("New tuple: #{inspect(my_stats2)}")

    # Access an element of the tuple
    IO.puts("Age: #{elem(my_stats2, 3)}")

    # Get the size of the tuple
    IO.puts("Size of the tuple: #{tuple_size(my_stats2)}")

    # Delete and insert elements in the tuple
    my_stats3 = Tuple.delete_at(my_stats2, 0)
    my_stats4 = Tuple.insert_at(my_stats3, 0, 199)
    IO.puts("Updated tuple: #{inspect(my_stats4)}")

    # Create a tuple with duplicates
    many_zeros = Tuple.duplicate(0, 5)
    IO.puts("Many zeros: #{inspect(many_zeros)}")

    # Pattern matching with a tuple
    {weight, height, name} = {165, 5.4, "sachin"}
    IO.puts("Name: #{name}, Weight: #{weight}, Height: #{height}")
  end
end

Tuples.main()
