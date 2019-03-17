
# Methods


def sum(x, y)
  puts "the first operand is #{x}"
  puts "the second operand is #{y}"
  puts x + y
end

sum(10, 20)

#explicit return example

def square(number)
  result = 0

  while true
    result += number
    return result if result = number * number
  end
end

 puts square(10)

# Method with defaut value: 
# def sum(a, b = 10)
