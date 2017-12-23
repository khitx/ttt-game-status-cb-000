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

board = ["X", "X", "X", " ", " ", " ", " ", " ", " "]

def won?(board)
  WIN_COMBINATIONS.detect do |wci|
    puts("wci #{wci}")
    wci.all? do |i|
      #puts("i: #{i}")
      #puts("wci[i]: #{wci[i]}")
      if (board[i] == 'X' || board[i] == 'O')
        puts(board[i])
      end
    end
  end
end

won?(board)
