# "global" methods

puts "Hello"
p [1,2,3]
x = gets

def dice_roll(n)
  rand(n) + 1
end

# - local variables

first_name = "Finn"

def jake_name
  first_name = "Jake"
  last_name  = "The Dog"
  "#{first_name} #{last_name}"
end

puts [first_name, "is friends with", jake_name].join(' ')

# - methods on objects

[1,2,3].empty?

# - arguments, return values, side effects

def my_method(x, y, z)
  "foo"
  "bar"
  "baz"
end

# - classes and instances

class Person
end

class Calculator
  def initialize(init_result)
    @result = init_result
  end

  def add(x)
    @result = @result + x
  end
end

class Email1
  def initialize(subject, headers)
    @subject = subject
    @date    = headers[:date]
    @from    = headers[:from]
  end

  def subject
    @subject
  end

  def date
    @date
  end

  def from
    @from
  end
end

email1 = Email1.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Ferdous" })
email2 = Email2.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Ferdous" })

class Email2
  def initialize(subject, headers)
    @subject = subject
    @headers = headers
  end

  def subject
    @subject
  end

  def date
    @headers[:date]
  end

  def from
    @headers[:from]
  end
end

# - creating a class
# - instantiating a class
# - instance variables
# - initializer



# BLOCKS

5.times do |i|
  puts "Oh yeah #{i}"
end

def some_method(i)
  ##
end

fruits = ["apple", "banana", "pineapple", "pear"]
#=> ["apple", "banana", "pear"]

fruits.each do |fruit|
 puts "Do you want a #{fruit}"
end

# Fixnum#times
# Array#each
# Array#map
# Array#select

fruits.map do |fruit|
  fruit.length
end

fruits.select do |f|
  f.include?("ap")
end

fruits.select {|f| f.include?("ap") }


chess_board = [
  [:rook, :bishop, nil, :king, :queen, :knight, :bishop, :rook],
  [:pawn, :pawn, :pawn, :pawn, :pawn, :pawn, :pawn, :pawn ],
  [nil, :knight, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, :PAWN, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil],
  [:PAWN, :PAWN, :PAWN, nil, :PAWN, :PAWN, :PAWN, :PAWN ],
  [:ROOK, :BISHOP, :KNIGHT, :KING, :QUEEN, :KNIGHT, :BISHOP, :ROOK]
]
# Array#compact
[7, 8, 1, 0, 4, 0, 7, 8]

result = chess_board.map do |row|
  row.compact.length
end

result = chess_board.map do |row|
  row.reject {|piece| piece.nil? }.length
end

result = chess_board.map do |row|
  row.select {|piece| !(piece.nil?) }.length
end

  if == != < > && ||
  end

  p result
