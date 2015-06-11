class Player
attr_reader :max_health, :current_health, :visited_wall

  def initialize
      @visited_wall = false
      @max_health = 20
  end

  def play_turn(warrior)
   if @visited_wall == false
      if warrior.feel(:backward).empty? == true && warrior.health <20 && warrior.health >= @health
       warrior.rest!
       elsif warrior.feel(:backward).captive?
       warrior.rescue!(:backward)
       elsif warrior.feel(:backward).empty? == true
       warrior.walk!(:backward)
       elsif warrior.feel(:backward).enemy? == true
         warrior.attack!(:backward)
       else
         @visited_wall = true
      end
   else
     if  warrior.feel.empty? == true && warrior.health <20 && warrior.health >= @health
     warrior.rest!
     elsif warrior.feel.empty? == true && warrior.health <15 && warrior.health < @health
     warrior.walk!(:backward)
     elsif warrior.feel.captive?
     warrior.rescue!
     elsif warrior.feel.empty? == true
     warrior.walk!
     else warrior.attack!
     end
    end
    @health = warrior.health
  end # def end
end #class end
