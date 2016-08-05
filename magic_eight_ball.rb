#put hash and array stuff up here. dont forget to randomize it.
@answer = ["Of course!", "No way!", "Maybe...", "Try asking differently.", "You are asking the wrong question.", "Come on, you don't need my help with that!", "Good question, sleep on that thought and the answer will come to you."]

def add_answer
  puts ""
  puts "Add Answer"
  puts ""
  print "-->"
  added_answer = gets.strip
  @answer.push(added_answer)
end

while true
  puts ""
  puts "Type a 'Yes' or 'No' question you would like answered or type quit to leave."
  puts ""
  print "-->"
  question = gets.strip.downcase
    if question == 'quit'
      exit
    elsif question == 'should i eat tacos?'
      puts ""
      puts "Good question. Ask Dave."
      puts ""
    elsif question == 'add answer'
      add_answer
    elsif question == 'list answers'
      puts @answers
      #answer.push
    else
      puts ""
      puts @answer.shuffle[0]
      puts ""
    end
end
