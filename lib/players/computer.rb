module Players
  class Computer<Player
    def move(board)
      #index=rand(9)
      index=minimax(board)
      return index.to_s if board.valid_move?(index)
    end
  end
end
