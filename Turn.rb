class Turns
  attr_accessor :turn, :tally
  def initialize(player)
    @current_player = player
    question = Questions.new(@current_player)
    @answer = question.answer
    @correct = question.correct?
  end
  def tally
    if(@correct)
      puts "Way to go, you got that right!"
    else
      puts "Oh no! that answer was wrong, minus one life for you!"
     @current_player.lose_life
  end
end
end
