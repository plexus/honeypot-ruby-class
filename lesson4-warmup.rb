############################################################
### 1. Arrays
###---------------------------------------------------------
### 1.1. appending
beatles = ["John"]
beatles << "Paul"
beatles << "George"
beatles << "Ringo"
# add Paul, George, Ringo
# puts beatles.inspect

###---------------------------------------------------------
### 1.2 looking up values
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
# find the piece at the seventh row, third column
# Expected output: PAWN
row_seven = chess_board[6]
#puts row_seven[2]

#puts chess_board[6][2]

###---------------------------------------------------------
### 1.3 Setting values
# Move the pawn from row 2, column 4 two places forward
# Careful so you don't add an extra pawn to the board
chess_board[3][3] = chess_board[1][3]

row_two = chess_board[1] # [:pawn, :pawn, ...]
row_two_col_four = row_two[3]

row_four = chess_board[3] # [nil, nil, ...]
row_four[3] = row_two_col_four

chess_board[1][3] = nil

require 'pp'
#pp chess_board

# Expected output:
# [[:rook, :bishop, nil, :king, :queen, :knight, :bishop, :rook],
#  [:pawn, :pawn, :pawn, nil, :pawn, :pawn, :pawn, :pawn],
#  [nil, :knight, nil, nil, nil, nil, nil, nil],
#  [nil, nil, nil, :pawn, nil, nil, nil, nil],
#  [nil, nil, nil, :PAWN, nil, nil, nil, nil],
#  [nil, nil, nil, nil, nil, nil, nil, nil],
#  [:PAWN, :PAWN, :PAWN, nil, :PAWN, :PAWN, :PAWN, :PAWN],
#  [:ROOK, :BISHOP, :KNIGHT, :KING, :QUEEN, :KNIGHT, :BISHOP, :ROOK]]


############################################################
### 2. Hashes
###---------------------------------------------------------
### 2.1 Adding values
menu = {"Cafe Latte" => 2.75,
        "Espresso" => 2.75,
        "Brownie" => 1.50,
        "Chocolate chip cookie" => 1.00}

menu["Pumpkin Spice Latte"] = 3.20

# It's fall! Add Pumpkin Spice Latte to the menu
# puts menu["Pumpkin Spice Latte"]
# Expected result: 3.20

###---------------------------------------------------------
### 2.1 Looking up values
# Your group had two latte's, an espresso, and two brownies. Calculate the
# # total.
# puts 3 * (2 * menu["Cafe Latte"] +
#   menu["Espresso"] +
#   menu["Brownie"] * 2)

############################################################
### 3. Functions
### 3.1

# Write a function "banner" that takes two arguments, a number "width", and a
# string "message". It should print out a number of starts, followed by the
# message, followed by another bunch of stars. For example:

# banner(5, "Hello Rubees!")
# => "***** Hello Rubees! *****"

# banner(10, "How Much Fun Is This!")
# => "********** How Much Fun Is This! **********"

# Note that banner directly prints this result, the return value of nil

def banner(width, message)
  "#{stars(width)} #{message} #{stars(width)}"
end

def stars(count)
  "*" * width
end

print "What's your message? "
puts banner(5, gets.strip.upcase)

### 3.2

# Now add a function "stars", that takes one argument (a number) and returns
# that many stars. Now use the new "stars" function inside the banner function.


############################################################
# HINTS

# 1.1
# appending is done with <<, aka the shovel-operator

# 1.2
# Watch out: arrays are zero-indexed, row 7 has index 6

# 1.3
# Makes sure to set the old position of the pawn to nil

# 3.1
# Remember you can "multiply" a string with a number
