# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

WC = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

board = ["O", "X", "X", " ", "X", "X", "X", "X", "X"]

def won?(board)
  WIN_COMBINATIONS.detect do |wci|
    winX = wci.all? {|i| board[i] == 'X'}
    winO = wci.all? {|i| board[i] == 'O'}
    if winX || winO
      return wci
    end
  end
end

def full?(board)
  if (board.all? {|i|
    #puts(i.nil?)
    #puts(i == " ")
    puts(!(i.nil? || i == " "))
    #puts(i)
    })
    return true
  end
end

puts(full?(board))
