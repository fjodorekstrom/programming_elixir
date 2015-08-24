defmodule Mathematics do
  def gcd(x, 0), do: x
  def gcd(x, y) when is_integer(x) and x > 1 and is_integer(y) and y > 1, do: gcd(y,rem(x,y))
  def gcd(x, y), do: raise "Negative number not possible"
end
