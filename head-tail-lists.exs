defmodule MyList do
  def len([]),                        do: 0
  def len([_head | tail]),            do: 1 + len(tail)

  def square([]),                     do: []
  def square([head | tail]),          do: [ head*head | square(tail) ]

  def add_1([]),                      do: []
  def add_1([head | tail]),           do: [head+1 | add_1(tail)]

  def map([], _func),                 do: []
  def map([ head | tail ], func),     do: [ func.(head) | map(tail, func) ]

  #public method
  def sum(list),                      do: _sum(list, 0)

  #private methods
  defp _sum([], total),               do: total
  defp _sum([ head | tail ], total),  do: _sum(tail, head+total)

  def summ([]),                       do: 0
  def summ([ head | tail ]),          do: head + summ(tail)
end

#Visualization of square function
#[1, 2, 3, 4, 5 ]
#  1 [2, 3, 4, 5]
#    4 [3, 4, 5 ]
#      9 [4, 5  ]
#        16  [5 ]
#          25  []
#             returns [1, 4, 9, 16, 25]
