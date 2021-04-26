class Game
  NUMBER_OF_PLAYERS = 2

  def initialize
    puts "New game lives!"
    setup
  end

  def setup
    # Create a new array with the proper number of spots.
    @players = Array.new(NUMBER_OF_PLAYERS)
    # Fill the array with new Player objects.
    @players.fill { |i| Player.new }
  end
end