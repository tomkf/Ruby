class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
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




