defmodule MyList do
  def reduce([], value, _) do
    value
  end

  def reduce([ head | tail ], value, func) do
    reduce(tail, func.(head, value), func)
  end

  def mapsum([], _) do
    0
  end

  def mapsum([ head | tail ], func) do
    func.(head) + mapsum(tail, func)
  end

  def max([ head | tail ]) do
    _max(tail, head)
  end

  defp _max([], value) do
    value
  end

  defp _max([ head | tail ], value) do
    _max(tail, _ismax(head, value))
  end

  defp _ismax(head, value) when head > value do
    head
  end

  defp _ismax(head, value) when head < value do
    value
  end
end
