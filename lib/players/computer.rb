module Players
  class Computer<Player
    #@moves=[]
    #@scores=[]


    def move(board)
      #index=rand(9)
      @temp_board=Board.new(board.cells)
      index=minimax(@temp_board)
      puts "Please enter 1-9: #{index}"
      return index.to_s if board.valid_move?(index)
    end

    def minimax(board)
      game_analysis=Game.new(Players::Computer.new("X"), Players::Computer.new("O"), @temp_board)
      game_analysis_possible_moves=game_analysis.possible_moves
      #game_analysis_possible_moves[0]
      scores=[]
      game_analysis_possible_moves.each do |move|
        game_analysis.board.update(move,game_analysis.current_player) unless game_analysis.over?
        puts "Score: #{game_analysis.score}" if game_analysis.score
        scores<<game_analysis.score if game_analysis.score
      end
      puts "All scores: #{scores}"
      game_analysis_possible_moves[0]
      #return score if over?
      #scores = [] # an array of scores
      #moves = []  # an array of moves
      #prospective_board=board
      #prospective_current=current_player

     # Populate the scores array, recursing as needed
     #prospective_board.cells.each_with_index{|m,i| (i+1).to_s if m==" "}.each do |move|
     #    possible_game = prospective_board.update(move, prospective_current)
     #    if prospective_current==@player_1
     #      prospective_current=@player_2
     #    else
     #      prospective_current=@player_1
     #    end
     #    scores.push minimax(prospective_board)
     #    moves.push move
     #  end

     # Do the min or the max calculation
     #  if current_player.token == "X"
         # This is the max calculation
     #      max_score_index = scores.each_with_index.max[1]+1
     #      return max_score_index.to_s
         #@choice = moves[max_score_index]
         #return scores[max_score_index]
     #  else
         # This is the min calculation
     #      min_score_index = scores.each_with_index.min[1]+1
     #      return min_score_index.to_s
         #@choice = moves[min_score_index]
         #return scores[min_score_index]
     #  end

    end
  end

end
