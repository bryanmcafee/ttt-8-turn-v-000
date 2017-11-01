def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
end


def valid_move?(board, position)
move=position.to_i
test = move - 1
test.between?(0,8) && !(position_taken?(board, test))
end

def position_taken?(board, position)
return false if [" ", ""].include?(board[position])
return true if ["X", "O"].include?(board[position])
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(board, index, token ="X")
  board[index] = token
  board
end
