class Drink
  def initialize(type, content)
    @type = type
    @content = content
  end

  def type
    @type
  end

  def content
    @content
  end
end

drinks = [
  Drink.new(:coffee, 20),
  Drink.new(:coffee, 20),
  Drink.new(:tea, 25),
  Drink.new(:beer, 50),
  Drink.new(:beer, 33),
  Drink.new(:beer, 33),
  Drink.new(:beer, 33),
]

drinks
  .select {|x| x.type == :beer }
  .map    {|x| x.content}
  .reduce {|x, y| x + y}


if drinks.any? {|d| d.type == :beer && d.content > 40 }
  puts "You ordered a large beer"
end

if drinks.all? {|d| d.type == :coffee || d.type == :tea }
  puts "You only ordered coffee and tea"
end

############################################################

drinks.each { |x|
  puts "#{x.content} cl of #{x.type}"
}

############################################################

contents = drinks.map { |x|
  x.content
}

# contents == [20, 20, 25, 50, 33]

total = contents.reduce { |x, y|
  x + y
}

# total = 148

puts "A total of #{total} cl of drinks"

############################################################

def do_three_times(&this_is_the_block)
  this_is_the_block.call
  this_is_the_block.call
  this_is_the_block.call
end

do_three_times {
  puts "shake it!"
}

# shake it!
# shake it!
# shake it!

############################################################
