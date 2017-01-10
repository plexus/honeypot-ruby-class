# arithmetic

5 * 4
3 + 27
3 - 2
8 / 2

2**4
#=> 16

27 % 4

3 * 2**4 + 7 * 4 - 12 / 6
(3 * 2**4) + (7 * 4) - (12 / 6)

obj.hello(x)
3.to_s

3 * 5
3.*(5)

Money.new(5, "EUR")

# comparison operators

>
<
<=
>=

5 < 3
8 > 9
1 >= 3

==
!=

equal?

# logical (boolean) operators

&&
||
!

def check(x)
if x
  puts "#{x} is true"
else
  puts "#{x} is not true"
end
end

falsy => false, nil
truthy => everything else
""
[false]

def do_something_with_first_thing_in_array(arr)
  first_thing = arr[0]
  first_thing && first_thing.do_cool_thing
end

def check
  elements = [1, 5, [false], 0, false, nil, true, [], {:x => :y}, :symbol, false, nil]
  x = elements.sample
  y = elements.sample
  print "!(#{x.inspect} || #{y.inspect})"
  gets
  puts (!(x || y)).inspect
  print "#{x.inspect} && !(#{y.inspect})"
  gets
  puts (x && !y).inspect
  print "!#{x.inspect} && (#{y.inspect})"
  gets
  puts (!x && y).inspect
end
