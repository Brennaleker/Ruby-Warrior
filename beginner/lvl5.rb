class Player
  def play_turn(warrior)
    if warrior.feel.empty? == true && warrior.health <20 && warrior.health >= @health
     warrior.rest!
     elsif warrior.feel.captive?
     warrior.rescue!
     elsif warrior.feel.empty? == true
      warrior.walk!
    else warrior.attack!
    end
  @health = warrior.health
  end
end
