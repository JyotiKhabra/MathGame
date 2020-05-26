class Players
  attr_accessor :lives, :name
  def initialize(name)
    @name = name
    @lives = 3
  end
  def lose_life
    @lives -= 1
  end
end

# puts Jyoti = Players.new("Jyoti")

