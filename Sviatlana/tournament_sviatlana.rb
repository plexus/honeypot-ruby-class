class Tournament
  def initialize(creatures)
    @creatures = creatures
  end

  def go!
    while remaining_creatures.count > 1
      opponent1, oppenent2 = remaining_creatures.sample(2)
      puts "#{opponent1.name} battles #{oppenent2.name}"
      sleep 0.3
      battle(opponent1, oppenent2)
    end
    puts "#{remaining_creatures.first.name} wins!"
  end

  def battle(opponent1, oppenent2)
    while [opponent1, oppenent2].all?(&:alive?)
      attacker, defender = [opponent1, oppenent2].shuffle
      was_shield_active = defender.shield?
      attacker.attack(defender)
      puts "#{attacker.name} strikes! #{defender.name} is down to #{defender.health} health. The shield is #{defender.shield}"
      sleep 0.3
      unless defender.shield?
        if was_shield_active
          puts "#{defender.name}'s shield is depleted :("
        end
      end
      unless defender.alive?
        puts "#{defender.name} dies :("
      end
    end
  end

  def remaining_creatures
    @creatures.select(&:alive?)
  end
end
