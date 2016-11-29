class Creature
  def initialize(name, strength, health)
    @name = name
    @strength = strength
    @health = health
  end

  def name
    @name
  end

  def health
    @health
  end

  def lose_health(n)
    @health = @health - n
  end

  def attack(other_creature)
    other_creature.lose_health(@strength)
  end

  def alive?
    @health > 0
  end
end
