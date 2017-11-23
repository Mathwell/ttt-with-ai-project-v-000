module Players
  class Computer<Player
    def move(board)
      #index=rand(9)
      ai_move=Game.new(Players::Computer.new("X"),Computer.new("O"), board).tap{|g| g.minimax(board)}
      index=ai_move
      return index.to_s if board.valid_move?(index)
    end
  end
end
