def anagrams?(a_string, another_string)
  # TODO: implement the obvious method to test if two words are anagrams
  # retrun true/false

  chars_only_A = a_string.downcase.scan(/[a-z]/)

  chars_onlyB = another_string.downcase.scan(/[a-z]/)

  if chars_only_A.sort == chars_only_B.sort
    return true
  else
    return false
  end
end

def anagrams_on_steroids?(a_string, another_string)
  # TODO: implement the improved method....by using hash

  chars_only_A = a_string.downcase.scan(/[a-z]/)
  chars_only_B = another_string.downcase.scan(/[a-z]/)

  hash_A = {}
  chars_only_A.each do |item|
    if hash_A[item]
      hash_A[item] += 1
    else
      hash_A[item] = 1
    end
  end

  hash_B = {}
  chars_only_B.each do |item|
    if hash_B[item]
      hash_B[item] += 1
    else
      hash_B[item] = 1
    end
  end


  if hash_A == hash_B
    return true
  else
    return false
  end
end




