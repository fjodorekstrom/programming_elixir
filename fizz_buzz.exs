defmodule Fizz do
  def buzz(0, 0, _), do: "FizzBuzz"
  def buzz(0, _, _), do: "Fizz"
  def buzz(_, 0, _), do: "Buzz"
  def buzz(_, _, c), do: c
end
