module Players
  class Computer<Player
    attr_accessor :scores, :player, :last_move

    @player


    def move(board)
      if board.turn_count==0
        index=board.possible_moves[rand(board.possible_moves.count-1)]
        puts "First move: #{index}"
        return index.to_s
      else
        index=board.possible_moves[rand(board.possible_moves.count-1)]
        if board.turn_count%2==0
          @player="X"
        else
          @player="O"
        end
        @scores=[]
        best_move=minimax(board)
        puts "Best move: #{best_move}"
        index=best_move unless best_move==nil
        puts "Please enter 1-9: #{index}"
        return index.to_s #if board.valid_move?(index)
      end
    end

    def minimax(board)
      new_board=[]
      board.cells.each {|c| new_board<<c}
      temp_board=Board.new(new_board)
      temp_game=Game.new(Players::Computer.new("X"), Players::Computer.new("O"), temp_board)
      temp_possible_moves=temp_game.board.possible_moves
      #game_analysis_possible_moves[0]
      #scores=[]
      temp_possible_moves.each do |m|
        if !temp_game.over?
          temp_game.board.update(m,temp_game.current_player)
          #if temp_game.over? @last_move=m
          minimax(temp_game.board)
        else
          puts "Score: #{temp_game.score} move: #{m}" if temp_game.score
          @scores<<temp_game.score if temp_game.score
        end
      end
      #puts "All scores: #{scores} player #{@player}"
      if @player=="X"
        return best_move=temp_possible_moves[@scores.find_index(10)] if @scores.include?(10)
      else
        return best_move=temp_possible_moves[@scores.find_index(-10)] if @scores.include?(-10)
      end
      nil

    end
  end

end
