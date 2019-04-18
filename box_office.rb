require 'csv'

def most_successful(number, max_year = 3000, file_path)
  # TODO: return the number most successful movies before max_year

  counter = 0

  array_by_year = []

  CSV.foreach(file_path) do |row|
    array_by_year.push(name: row[0], year: row[1].to_i, earnings: row[2].to_i) if row[1].to_i < max_year.to_i
  end




  sorted_array = array_by_year.sort_by { |item| item[:earnings] }.reverse

  return sorted_array[0, number]
end




