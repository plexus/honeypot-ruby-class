FG_BLACK = 30
FG_RED = 31
FG_GREEN = 32
FG_YELLOW = 33
FG_BLUE = 34
FG_MAGENTA = 35
FG_CYAN = 36
FG_WHITE = 37

BG_BLACK = 40
BG_RED = 41
BG_GREEN = 42
BG_YELLOW = 43
BG_BLUE = 44
BG_MAGENTA = 34
BG_CYAN = 46
BG_WHITE = 47

class String
  def color(*args)
    "\e[#{args.join(';')}m#{self}\e[0m"
  end
end

puts "\e[2J"

SIZE = 31

SIZE.times do |i|
  print " " * (SIZE-i+20)
  offset = rand(10)
  spacing = [5, 6, 7, 8, 9].sample
  row = ((2*i)+1).times.map do |x|
    if (x - offset) % spacing == 0 && (i % 2 == 0)
      "o".color([FG_RED, FG_BLUE, FG_MAGENTA, FG_CYAN, FG_YELLOW].sample, BG_GREEN)
    else
      "*".color(FG_WHITE, BG_GREEN)
    end
  end.join
  puts row
end
