# "global" methods

puts "Hello"
p [1,2,3]
x = gets

def dice_roll(n)
  rand(n) + 1
end

# - local variables

first_name = "Finn"

def jake_name
  first_name = "Jake"
  last_name  = "The Dog"
  "#{first_name} #{last_name}"
end

puts [first_name, "is friends with", jake_name].join(' ')

# - methods on objects

[1,2,3].empty?

# - arguments, return values, side effects

def my_method(x, y, z)
  "foo"
  "bar"
  "baz"
end

# - classes and instances

class Person
end

class Calculator
  def initialize(init_result)
    @result = init_result
  end

  def add(x)
    @result = @result + x
  end
end

class Email
  def initialize(subject, headers)
    @subject = subject
    @date    = ...
    @from    = ...
  end

  def subject
    @subject
  end

  def date
    @date
  end

  def from
    @from
  end
end

email = Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Ferdous" })

class Email
  def initialize(subject, headers)
    @subject = subject
    @headers = headers
  end

  def subject
    @subject
  end

  def date
    # ...
  end

  def from
    # ...
  end
end


# - creating a class
# - instantiating a class
# - instance variables
# - initializer
