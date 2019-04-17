require 'open-uri'
require 'json'

def generate_grid(grid_size)
  char_array = ('A'..'Z').to_a
  Array.new(grid_size) { char_array.sample }
end

def word_exsist?(word)
  url = "https://wagon-dictionary.herokuapp.com/#{word}"
  string = open(url).read
  api_result = JSON.parse(string)
  api_result['found']
end

def compare_instances(attempt, grid)
  final_answer = []
  attempt_array = attempt.upcase.split("")
  grid.each do |item|
    final_answer.push(item) if attempt_array.include?(item)
  end
  indexer = (final_answer & attempt_array).flat_map { |i| [i] * [final_answer.count(i), attempt_array.count(i)].min }
  if indexer.sort == attempt_array.sort
    return true
  else return false
  end
end

def run_game(attempt, grid, start_time, end_time)
  final_hash = { score: 0, time: end_time - start_time }

  if compare_instances(attempt, grid) && word_exsist?(attempt)
    final_hash[:score] += attempt.length + 100 - final_hash[:time]
    final_hash[:message] = "Well done, '#{attempt}' is an english word and part of the grid"
  elsif compare_instances(attempt, grid) == true && word_exsist?(attempt) == false
    final_hash[:message] = "#{attempt} is not an english word"
  else
    final_hash[:message] = "#{attempt} not in the grid"
  end

  return final_hash
end



