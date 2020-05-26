class MathGame
  attr_reader
  attr_accessor :player1, :player2
  def initialize(player1, player2)
    @player1 = Players.new(player1)
    @player2 = Players.new(player2)
    @current_player = @player1
    game_loop
  end

  def switch_player
    puts @current_player.name
    if(@current_player == @player1)
      @current_player = @player2
    else @current_player = @player1
    end
  end
  def end_game
    if @player1.lives == 0
      puts "Game Over! #{@player1.name} you've run out of lives!"
      puts "#{@player2.name} that means you are the winner!"
    else
      puts "Game Over! #{@player2.name} you've run out of lives!"
      puts "#{@player1.name} that means you are the winner!"
  end
end
  def score
    puts "#{@player1.name} you've got  #{@player1.lives} lives!"
    puts "#{@player2.name} you've got  #{@player2.lives} lives!"
  end
  ## starts game and loops through the game
  def game_loop
    puts "Let's start this game!"
    while (@current_player.lives > 0)
      @turn = Turns.new(@current_player)
      @turn.tally
      score
      switch_player
    end
    end_game
end
end