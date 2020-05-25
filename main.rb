require './mathgameclass'
require './questionsclass'
require './playersclass'
require './turnclass'

## within my app there will be multiple classes that will store the the entire game, the players, turns and questions. in each class it will store, the roles/ actions for that class. the individual class

## the MathGame class will hold the gameloop
class MathGame
  attr_accessor :player1, :player2, :question
  def initialize(game)
    @game = play_game
    GameLoop while true |@game|
      Players ()
      Question()
      Turns()

   end
## players calss will hold the players and their lives th elives will decrement if a okayer gets a question wrong
class Players
  attr_accessor :lives :players
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end
  def current_player(current_player)
    @current_player = @player1 || @player2
  end
  def answer(answer)
    @answer = players commandline response
  end

  ## will hold the turn and the tally for the current turn the tally will increment if a player gets a question right
class Turns
  attr_accessor :turn :tally

  def initialize(question)
    @turn = new_question
  end

  def score(tally)
    @tally = current_score and current_lives
  end

  ## will hold the questions being asked for that round and to which player, along with recieving the answer and updating the tally
class Questions
  attr_accessor :questions

  def initialize(player, question)
    @question = some math question
    end

    def reply()
      reply = response to players @answer
    end

#i want to use gameclass to say if i want to start a game, and if i want to start a game then it will help to initialize all the other parts of the game so liek players, turns and questions.
## game -> start -> players -> questions -> turn -> score at end of turn -> question ->continue
game = true
MathGame.new(game)