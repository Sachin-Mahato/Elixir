defmodule Recursion do
    # Base case
    # def up_to(0) do
    #     # 0 # return
    #     :ok
    # end

    #shorter syntax
    # def up_to(0), do: 0

    # functional overloading
    # def up_to(nums) do
        # IO.puts(nums) # 3, 2,1,0 -> Ascending stage -> called Tail recursion
        # up_to(nums - 1)
        # IO.puts(nums) # 1,2,3 the functional call happened unit match the base case -> Return stage -> called Had recursion
    # end

    # sum of all numbers

    # Base case
    # def sum_digits(0), do: 0
    # def sum_digits(numbers) do
        # numbers + sum_digits(numbers - 1)
    # end

    # || tail recursive function ||
    # instead of passing 0 each, use a default value
    # def sum_digits_tail(num, acc \\ 0)
    # def sum_digits_tail(0, acc), do: acc
    # def sum_digits_tail(num, acc) do
    #  sum_digits_tail(num - 1, acc + num) # -> return acc at the end require less memory
    # end

    # || calculate factorial of a number ||

    # def fact(1), do: 1
    # def fact(n), do: n * fact(n - 1)

    # tail fact function
    # def fact_tail(n, acc \\ 1)
    # def fact_tail(1, acc), do: acc
    # def fact_tail(n, acc), do: fact_tail(n - 1, n * acc)

    # || Reverse numbers

    # def reverse_num_tail(num, acc \\ 0)
    # def reverse_num_tail(0, acc), do: acc

    # def reverse_num_tail(num, acc) do
    #   new_num = div(num,10)
    #   new_acc= acc * 10 + rem(num,10)
    #   reverse_num_tail(new_num, new_acc)
    # end

end

# IO.puts Recursion.sum_digits(3)
# IO.puts Recursion.sum_digits_tail(4)
# IO.puts Recursion.fact(4) # 24
# IO.puts Recursion.fact_tail(5) # 120
# IO.puts Recursion.reverse_num_tail(123) # 321
