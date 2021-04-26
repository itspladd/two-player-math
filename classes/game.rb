class Game
  NUMBER_OF_PLAYERS = 2
  RANDOMIZER_ROTATIONS = 10

  def initialize
    puts "Starting a new game!"
    setup
    game_loop
  end

  def setup
    # Create a new array with the proper number of spots
    # Then fill the array with new Player objects.
    @players = Array.new(NUMBER_OF_PLAYERS)
    @players.fill { |i| Player.new }

    # Create the var to track the game state and hold questions.
    @game_running = true
    @questions = []

    @current_player = choose_random_player
    puts "#{@current_player.name} goes first!"
  end

  def game_loop
    while @game_running
      puts "******************"
      puts "game loop start"
      puts "current player is #{@current_player.name}"
      @current_player.lose_life
      @game_running = !game_over?
      @current_player = next_player
      puts "game loop end"
    end
  end

  def choose_random_player
    # Scramble the players array and return the first element in the array.
    @players.rotate!(rand(RANDOMIZER_ROTATIONS))[0]
  end

  def next_player
    # Rotate the players array and return the first element.
    @players.rotate![0]
  end

  def game_over?
    active_players = @players.select {|player| player.lives > 0}
    puts "Checking game over."
    puts "Players still in the game: ", active_players
    active_players.length == 1
  end
end