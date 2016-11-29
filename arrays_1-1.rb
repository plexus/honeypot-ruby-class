numbers = [1, 2, 3, 4, 5, 6]
# your code goes here
numbers = [
  numbers[1],
  numbers[3],
  numbers[5]
]

numbers.reverse
numbers.reverse!

new_name = name.capitalize!
name = "arne"

name.upcase!

p name
p new_name
# => [6, 4, 2]
