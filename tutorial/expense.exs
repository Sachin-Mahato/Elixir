defmodule Expense do
    alias Expense

    defstruct(
        title: "",
        date: nil,
        amount: 0,
        store: ""
    )

    @type t :: %Expense {
        title: String.t(),
        date: Date.t() | nil,
        amount: number(),
        store: String.t()
    }

    @spec sample :: [t()]
    def sample do
      [
        %Expense{title: "Grocery", date: ~D[2025-03-10], amount: 799.99, store: "Metro"},
        %Expense{title: "Mobile", date: ~D[2025-02-17], amount: 76.99, store: "Bell"},
        %Expense{title: "Shoes", date: ~D[2025-01-10], amount: 1799.99, store: "Nike"}
      ]
    end

    @spec total([t]) :: number()
    def total(expenses) do
      expenses
      |> Enum.reduce(0, fn expense, acc -> expense.amount + acc  end)
    end

    @spec sort_by_date([t()]) :: [t()]
    def sort_by_date(expenses) do
        expenses |>
        Enum.sort_by(& &1.date)
    end

end

IO.puts Expense.total Expense.sample
IO.inspect Expense.sort_by_date Expense.sample
