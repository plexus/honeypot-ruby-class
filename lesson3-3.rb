def add_one(number)
  # number = 4
  number + 1
end

def add_two(number)
  # number = 3
  number = add_one(number)
  add_one(number)
end

puts add_two(3)
