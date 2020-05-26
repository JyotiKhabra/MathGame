
class Questions
  attr_accessor :number_one, :number_two, :correct_answer

  def initialize(player)
    @number_one = rand(1..20)
    @number_two = rand(1..20)
    @correct_answer = @number_one + @number_two
    @current_player = player
    ask_question(player)
  end
  def ask_question(current_player)
    puts "#{current_player.name} what's #{@number_one} plus #{@number_two} equal?"
  end
  def answer
    @answer = gets.chomp.to_i
  end
  def correct?
    @correct_answer == @answer
  end
end

# numberx = Questions.new
# puts "whats the answer"
# # numberx.ask_question
# numberx.answer
# puts numberx.correct?
