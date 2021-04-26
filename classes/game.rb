class Game
  NUMBER_OF_PLAYERS = 2
  RANDOMIZER_ROTATIONS = 10

  def initialize
    puts "Starting a new game!"
    setup
    game_loop
    game_end
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
      puts "******* NEW TURN *******"
      print "#{@current_player.name}: "
      print "#{@current_player.score} points, "
      print "#{@current_player.lives} lives\n"

      question = new_question
      print @current_player.name, ": "
      puts question
      answer = @current_player.answer_question

      if question.solution == answer.to_i
        puts "Correct!"
        @current_player.add_score
      else
        puts "Wrong! The answer was #{question.solution}."
        @current_player.lose_life
      end

      @game_running = !game_over?
      @current_player = next_player
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

  def new_question
    @questions << Question.new
    @questions.last
  end

  # If there's only one player with lives remaining, return true.
  def game_over?
    active_players = @players.select {|player| player.lives > 0}
    active_players.length == 1
  end

  def game_end
    puts "******* GAME OVER! *******"
    puts "Final score:"
    @players.sort! {|player| player.score}
    @players.each {|player| puts "|#{player.name}: #{player.score} points |"}
    puts "Thanks for playing!"
  end
end