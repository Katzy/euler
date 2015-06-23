solutions = {}

def set_solutions_hash(digit, solutions)
  n = digit
  until n ==10
    solutions[n.to_s] = { "digit" => n, "solutions" => 1, "sum" => 0, "counter" => 0}
    n += 1
  end
  solutions
end

def total_sum(solutions)
  n = 1
  total = 0
  until n == 10
    total += solutions[n.to_s]["sum"]
    n += 1
  end
  p total
end

def count(digit, solutions)
  num_to_inspect = digit - 1
  set_solutions_hash(digit, solutions)
  digit_pointer = digit
  until num_to_inspect == 1200000000
    num_to_inspect.to_s.chars.map.each do |num|
      if num.to_i > 0
        solutions[num]["counter"] += 1

        if solutions[num]["counter"] == num_to_inspect   # the last solution for the digit
            solutions[num]["solutions"] += 1
           solutions[num]["sum"] += num_to_inspect
        end
      end
    end
     num_to_inspect += 1
  end

  p solutions
  total_sum(solutions)
end

if __FILE__ == $0

solutions = {}

count(1, solutions)

end
