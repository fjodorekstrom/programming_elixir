defmodule Max do
  def max([], value) do
    value
  end

  def max([ head | tail ], value) when head >= value do
      max(tail, head)
  end
  def max([ head | tail ], value) when head < value do
      max(tail, value)
  end
end
