class Player
  attr_accessor :lives

  def initialize()
    @lives = 3
  end

  def wrong
    self.lives -= 1
  end

end
