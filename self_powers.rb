

def sum_powers(n)
  sum = 0
  counter = 1
  until counter == (n + 1)
    sum = sum + (counter**counter)
    counter = counter + 1
  end
  sum
end