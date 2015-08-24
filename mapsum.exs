defmodule MapSum do
  def sum([], value, _), do
    value
  end

  def sum([ head | tail ], value, func), do
    sum(tail, func.(head, value), func)
  end
end
