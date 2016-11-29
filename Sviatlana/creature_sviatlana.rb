class Creature
  def initialize(name, strength, health, shield)
    @name = name
    @strength = strength
    @health = health
    @shield = shield
  end

  def name
    @name
  end

  def health
    @health
  end

  def shield
    @shield
  end

  def lose_health(n)
   if @shield > 0
     @shield = @shield - n
   else
     @health = @health - n
   end
  end

  def attack(other_creature)
    other_creature.lose_health(@strength)
  end

  def shield?
    @shield > 0
  end


  def alive?
    @health > 0
  end
end
