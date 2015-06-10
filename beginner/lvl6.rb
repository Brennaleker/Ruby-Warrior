class Player
  def play_turn(warrior)
    @visited_wall = false
   if @visited_wall = false
     if warrior.feel(:backward).wall? == false
        if warrior.feel(:backward).empty? == true && warrior.health <20 && warrior.health >= @health
         warrior.rest!
         elsif warrior.feel(:backward).captive?
         warrior.rescue!(:backward)
         elsif warrior.feel(:backward).empty? == true
         warrior.walk!(:backward)
         else warrior.attack!(:backward)
        end
     else
       @visited_wall == true
     end
   else
     if warrior.feel.empty? == true && warrior.health <20 && warrior.health >= @health
     warrior.rest!
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
