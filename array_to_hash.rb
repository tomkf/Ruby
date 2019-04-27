def array_to_hash(array)
  my_hash = {}
  if block_given?
    yield
    array.each_with_index do |array_item, index|
      my_hash['key' + index.to_s] = array_item
    end
  else
    array.each_with_index do |item, index|
      my_hash[index.to_s] = item
    end
  end
  my_hash
end
