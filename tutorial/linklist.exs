defmodule LinkList do

    # def sum(nums), do: sum_tail(nums)
    # def sum([]), do: 0

    # def sum ([h | t]) do
        # h + sum(t)
    # end

    # def sum_tail(nums, acc \\ 0)
    # def sum_tail([], acc), do: acc
    # def sum_tail([h | t], acc), do: sum_tail(t, acc + h)

    # @spec reverse_list(list(any), [any]) :: [any()]
    # def reverse_list(elements, acc \\ [])
    # def reverse_list([], acc), do: acc
    # def reverse_list([h | t], acc), do: reverse_list(t, [h | acc])


    # || Map

    # def map(elements, func, acc \\ [])
    # def map([], _, acc), do: acc |> reverse_list()
    # def map([h | t], func,acc), do: map(t, func, [func.(h) | acc])


    # || Concat list

    # def concat(src, dst), do: concat_func(src |> reverse_list(), dst)
    # def concat_func([], dst), do: dst
    # def concat_func([h | t], dst), do: concat_func(t, [h | dst])


    # || Flat map

    # def flat_map(elements, func, acc \\ [])
    # def flat_map([], _, acc), do: acc
    # def flat_map([h | t], func, acc), do: flat_map(t, func, concat(acc, func.(h)))


end

# IO.puts LinkList.sum([1,2,3])
# Removed reverse_list call as its implementation is commented out.
# IO.inspect LinkList.reverse_list(LinkList.map([1,2,3], fn x -> x * 2 end))

# || The |> operator
# IO.inspect LinkList.map([1,2,3], fn x -> x * 2  end) |> LinkList.reverse_list()

# IO.in  [1,2,3,4] |> LinkList.reverse_list()
# IO.inspect [1,2,3,4,5] |> LinkList.map(fn x -> x * 2  end) |> LinkList.reverse_list()
# IO.inspect [1,2,3,4,5] |> LinkList.map(fn x -> x * 2  end) |> Enum.reverse()

# IO.inspect [1,2,3,4,5] |> LinkList.map(fn x -> x * 2  end)

# IO.inspect LinkList.concat([1,2,3] , [4,5,6])

# IO.inspect LinkList.flat_map([:a, :b, :c], fn x -> [x,x]  end)
