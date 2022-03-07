class Game 
  attr_accessor :p1, :p2, :current_p, :winner

  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @current_p = @p1
    @winner 
  end

  def new_turn
    self.current_p == @p1 ? self.current_p = @p2 : self.current_p = @p1
  end
  
  def current_score 
    puts "P1: #{p1.lives}/3 vs P2: #{p2.lives}/3"
  end 

  def announce_winner
    if current_p == @p1
      puts "Player 1 wins with a score of #{current_p.lives}/3"
    else
      puts "Player 2 wins with a score of #{current_p.lives}/3"
    end
  end

end

