class Tournament
  def initialize(creatures)
    @creatures = creatures
  end

  def go!
    while alive_creatures.length > 1
      # opponents = alive_creatures.sample(2)
      # fight!(opponents)

      fight!(alive_creatures.sample(2))
    end
    puts "#{alive_creatures[0].name} is the winner!!"
  end

  def fight!(opponents)
    while opponents.all? {|o| o.alive? }
      attacker, defender = opponents.shuffle
      attacker.attack(defender)
      puts "#{attacker.name} attacked #{defender.name}"
      puts "#{defender.name} has #{defender.health} health left"
      sleep(0.1)
    end
  end

  def alive_creatures
    @creatures.select {|c| c.alive? }
  end
end
