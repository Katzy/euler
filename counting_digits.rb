def count(n)
  solutions = { :n => 0, :sum => 0, :counter => 0 }
  total = 0
  num_to_inspect = 0

  counter = 0
  until n == 10
    until num_to_inspect == 1500000000
      num_to_inspect.to_s.chars.map.each do |num|
        if num.to_i == n
          counter += 1
        end
      end

      if counter == num_to_inspect
        solutions[:n] += 1
        solutions[:sum] += num_to_inspect
        solutions[:counter] = counter
        p solutions
      end
      num_to_inspect += 1
    end
    total += solutions[:sum]
    counter = 0
    n += 1
    num_to_inspect = 0
    solutions = { :n => 0, :sum => 0, :counter => 0 }
  end
  puts total
end