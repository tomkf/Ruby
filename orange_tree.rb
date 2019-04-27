# A tree grows 1 meter per year until it is 10 years old. Then it stops growing.
# The orange tree cannot die until it reaches 50 years old.
# After 50 years, the probability of dying increases each year.
# No tree can live more than 100 years.
# A tree will produce 100 fruits a year once it is more than 5 years old.
# A tree will produce 200 fruits a year when it reaches 10 years old.
# A tree will not produce fruits once it reaches 15 years old.

class OrangeTree
  attr_reader :height, :living, :age, :fruits
  attr_writer :living, :age, :fruits, :height, :death_toll

  def initialize
    @height = 0
    @living = true
    @age = 0
    @fruits = 0
    @death_toll = 0
  end

  def dead?
    if @living == true
      return false
    elsif @living == false
      return true
    end
  end

  def chance_of_dying
    if @age >= 100
      @living = false
    elsif @age >= 50 && @death_toll < 200
      @death_toll += rand(0..10)
    elsif @death_toll >= 200
      @living = false
    end
  end

  def one_year_passes!
    @fruits = 0
    chance_of_dying
      @age += 1
    if @living && @age >= 15
    elsif @living && @age > 10 && @age < 15
      @fruits += 200
    elsif @living && @age == 10
      @fruits += 200
      @height += 1
    elsif @living && @age > 5
      @fruits += 100
            @height += 1
    elsif @living && @age <= 5
      @height += 1
    end
  end

  def pick_a_fruit!
    @fruits -= 1 if @fruits != 0
  end
end
