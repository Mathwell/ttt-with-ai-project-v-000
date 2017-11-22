class Player
  attr_accessor :token

  def initialize(token)
    @token=token
  end

  def token=(new_token)
    raise StandardError
  end

end

class NoMethodError #<StandardError
  def message
      puts   "not allowed"
  end
end
