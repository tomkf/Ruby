def colorful?(number)
  # TODO: return true if the number is colorful, false otherwise
  convert_digits = number.to_s.chars.map(&:to_i)
 first_number = convert_digits[0]
 second_number = convert_digits[1]
 third_number = convert_digits[2]

first_calc = first_number * second_number
 second_calc = second_number * third_number
 third_calc = first_calc * third_number

 if first_calc == second_calc || first_calc == third_calc || second_calc == third_calc
   return false
else
   return true
 end

end


puts colorful?(0)
 ## 2 x 3 = 6, 3 x 6 = 18, 36)


