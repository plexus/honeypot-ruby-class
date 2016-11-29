class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def first_name
    @first_name.strip
  end

  def last_name
    @last_name.strip
  end

  def full_name
    [first_name, last_name].join(' ')
  end
end

person = Person.new("Arne  ", "   Brasseur")

puts person.first_name # Arne
puts person.last_name  # Brasseur
puts person.full_name  # Arne Brasseur
