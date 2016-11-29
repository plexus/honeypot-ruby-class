require_relative 'Kaya/creature'
require_relative 'tournament'

creatures = [
  Creature.new("Dragon", 10, 50),
  Creature.new("Fairy", 8, 67),
  Creature.new("Elf", 15, 40),
  Creature.new("Orc", 7, 29)
]

Tournament.new(creatures).go!
