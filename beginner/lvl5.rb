class Player
attr_reader :max_health, :current_health

  def play_turn(warrior)
    @max_health = 20

    if warrior.feel.empty? == true && warrior.health <@max_health && warrior.health >= @current_health
     warrior.rest!
     elsif warrior.feel.captive?
     warrior.rescue!
     elsif warrior.feel.empty? == true
      warrior.walk!
    else warrior.attack!
    end
  @current_health = warrior.health
  end # def end

end # class end
