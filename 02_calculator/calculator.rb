
def add(first_num, second_num)
  return first_num + second_num
end

def subtract(first_num, second_num)
  return first_num - second_num
end

def sum(numbers)
  sum = 0
  numbers.each do |i|
    sum += i
  end
  return sum
end

def multiply(first_value, *extra_values)
  a = first_value
  i = 0
  while extra_values[i]
    a *= extra_values[i]
    i += 1
  end
  return a
end

def power(first_num, second_num)
  for i in 1..second_num-1
    first_num *= first_num
  end
  return first_num
end

def factorial(num)
  factorial = 1
  while num > 0
    factorial *= num
    num -= 1
  end
  return factorial
end
