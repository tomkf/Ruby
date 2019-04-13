def coach_answer(your_message)
  if your_message.include?("?")
    return "Silly question, get dressed and go to work!"
  elsif your_message == "I am going to work right now!"
    return ""
  else
    return  "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
  if your_message.upcase.include?("?")
    return "I can feel your motivation! Silly question, get dressed and go to work!"
  elsif your_message == "I am going to work right now!".upcase
    return ""
  else
    return "I can feel your motivation! I don't care, get dressed and go to work!"
  end
end

def run_loop
  prompt = " "
  until prompt == "I am going to work right now"
    puts "what do you want to ask"
    question_prompt = gets.chomp
    prompt = question_prompt


    question_logic(question_prompt)

  end
end

def question_logic(prompt)
  if prompt == prompt.upcase
    puts coach_answer_enhanced(prompt)
  else
    puts coach_answer(prompt)
  end
end


