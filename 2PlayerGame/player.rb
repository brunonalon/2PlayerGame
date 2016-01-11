class Player
  attr_reader :name, :life, :score
  
  def initialize(name)
    @name = name
    @life = 3
    @score = 0
  end 

  def gain_point
    @score += 1
  end

  def lose_life
    @life -= 1
  end   
end

