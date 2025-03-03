# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
class Unicorn
  def initialize(name, color)
    @name = name
    @color = color
  end

  def say(word)
    "*~*#{word}*~*"
  end
end

unicorn1 = Unicorn.new("dino", "purple")
p unicorn1.say("My name is sparkle")

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
  attr_reader :thirsty, :name, :pet
  def initialize(name, pet = "bat")
    @name = name
    @pet = pet
    @thirsty = true
  end
  def drink()
    @thirsty = false
  end
end

vampire1 = Vampire.new("elie",)

vampire2 = Vampire.new("Jax", "bloodhound")

p vampire1.drink
p vampire2.drink
p "Is #{vampire1.name} thirsty? #{vampire1.thirsty}"
p "Is #{vampire2.name}'s #{vampire2.pet} thirsty? #{vampire2.thirsty}"

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
  attr_reader :is_hungry
  def initialize(name, rider, color)
    @name = name
    @rider = rider
    @color = color
    @is_hungry = true
    @eats = 0
  end
  def eat()
    if @eats >= 4
    @is_hungry = false
  else @eats = @eats +1
    end
  end
end

p dragon1 = Dragon.new("tim", "bin", "grey")
p "Is the dragon still hungry #{dragon1.is_hungry}"

5.times do
  dragon1.eat
end
p "Is the dragon still hungry #{dragon1.is_hungry}"

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit

  def initialize(name, disposition)
    @name = name
    @disposition = disposition
    @age = 0
    @is_adult = false
    @is_old = false
    if @name == "Frodo"
      @has_ring = true
    else @has_ring = false
    end
  end

  def celebrate_birthday
    @age += 1
    if @age >= 33 && @age < 101
      @is_adult = true
    elsif @age >= 101
      @is_old = true
      @is_adult = false
    end

  end
end

p hobbit1 = Hobbit.new("Sam","happy")

102.times do
  hobbit1.celebrate_birthday
end
p hobbit1
