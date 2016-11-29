def add_two(number)
  number + 2
end
puts add_two(5) + 2

def add_two_bis(number)
  puts(number + 2)
end
add_two_bis(5) + 2
# lesson3-2.rb:9:in `<main>':
# undefined method `+' for nil:NilClass (NoMethodError)
