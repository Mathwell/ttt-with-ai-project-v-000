module Players
  class Computer<Player
    def move(board)
      index=rand(9)
      puts "Please enter 1-9: #{index}"
      return index.to_s if board.valid_move?(index)
    end
  end
end
