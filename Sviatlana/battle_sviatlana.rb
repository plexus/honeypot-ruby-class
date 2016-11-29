require_relative 'creature_sviatlana'
require_relative 'tournament_sviatlana'

creatures = [
  Creature.new("Dragon", 10, 50, 45),
  Creature.new("Fairy", 8, 67, 23),
  Creature.new("Elf", 15, 40, 40),
  Creature.new("Orc", 7, 29, 12)
]

tournament = Tournament.new(creatures)
tournament.go!
