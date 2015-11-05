class Player
  def initialize
    @health = 0
  end


  def play_turn(warrior)
    if warrior.feel.captive?
      warrior.rescue!
    elsif  warrior.feel.empty?
      if warrior.health < @health
        warrior.walk!
      elsif warrior.health < 14
            warrior.rest!
      else
        warrior.walk!
      end
   else
     warrior.attack!
   end
    @health = warrior.health
  end
end
