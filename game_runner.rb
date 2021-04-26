require_relative "classes/game"
require_relative "classes/player"
require_relative "classes/question"
require "pp"

class Game_Runner
  def initialize()
    @games = load_games
    run_app
  end

  def handle_input(input)
    if input.downcase == "e"
      quit_app
    end
    if input.downcase == "s"
      start_game
    end
    if input.downcase == "l"
      list_games
    end
  end

  def run_app
    while true
      puts "[S]tart a new game, [L]ist games from this session, or [E]xit?"
      print ">>"
      input = $stdin.gets.chomp
      handle_input(input)
    end

  end

  def quit_app
    puts "Bye!"
    exit
  end

  def start_game
    puts "Starting a new game!"
    add_game(Game.new)
  end

  def list_games
    pp @games
  end

  def load_games
    []
  end

  def add_game(game)
    @games << game
  end
end

game = Game_Runner.new