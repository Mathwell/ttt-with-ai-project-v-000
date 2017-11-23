module MiniMax
  def score
    if won?  and winner=="X"
        return 10
    elsif won? and winner=="O"
        return -10
    else
        return 0
    end
  end
end
