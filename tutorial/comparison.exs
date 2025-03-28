defmodule Compare do
  def main do
    do_stuff()
  end

  # def do_stuff do
  #   IO.puts "4 == 4.0 : #{4 == 4.0}"
  #   IO.puts "4 === 4.0 : #{4 === 4.0}"
  #   IO.puts "4 != 4.0 : #{4 != 4.0}"
  #   IO.puts "4 !== 4.0 : #{4 !== 4.0}"

  #   IO.puts "5 > 4 : #{5 > 4}"
  #   IO.puts "5 >= 4 : #{5 >= 4}"
  #   IO.puts "5 < 4 : #{5 < 4}"
  #   IO.puts "5 <= 4 : #{5 <= 4}"
  # end

  # def do_stuff do
  #  age = 16

  #  IO.puts "Vote & Driver : #{age >=16 and (age >=18)}"
  #  IO.puts "Vote & Driver : #{age >=16 or (age >=18)}"

  #  IO.puts not true
  # end

  # decision making

  # def do_stuff do
  #   age = 16

  #   if age >= 18 do
  #     IO.puts "Can votes"
  #   else
  #    IO.puts"Cant's vote"
  #   end

  #   unless age === 18  do
  #    IO.puts "You are not not 18"
  #   else
  #     IO.puts "You are 18"
  #   end

  #   cond do
  #      age >= 14 -> IO.puts "You can wait"
  #      age >= 16 -> IO.puts "You can drive"
  #      age >= 18 -> IO.puts "You can vote"
  #      true -> IO.puts "Default"
  #   end

  # end

  # Switch statement

  def do_stuff do
    age = 16

    case 2 do
      1 -> IO.puts "Enter 1"
      2 -> IO.puts "Enter 2"
      3 -> IO.puts "Enter 3"

    end

    IO.puts "Ternary operator : #{if age > 18, do: "Can vote", else: "NO way"}"
  end

end

Compare.main()
