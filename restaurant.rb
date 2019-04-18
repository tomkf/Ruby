class Restaurant
  # TODO: add relevant accessors if necessary
  attr_reader :average_rating, :city, :name, :restaurants
  attr_writer :average_rating, :restaurants

  def initialize(city, name)
    # TODO: implement constructor with relevant instance variables
    @city = city
    @name = name
    @average_array = []
    @average_rating = nil
  end

  def rate(new_rate)
    @average_array.push(new_rate)
    integer_count = 0
    @average_array.each do |item|
      integer_count += item
    end
    @average_rating = integer_count / @average_array.length
  end

  def self.filter_by_city(restaurants, city)
    restaurants.select do |restaurant|
      restaurant.city == city
    end
  end
end
