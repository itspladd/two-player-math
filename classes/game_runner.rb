require "pp"

class Game_Runner
  def initialize()
    run_app
  end

  def run_app
    while true
      puts "[S]tart a new game or [E]xit?"
      print ">>"
      input = $stdin.gets.chomp
      handle_input(input)
    end
  end

  def handle_input(input)
    if input.downcase == "e"
      quit_app
    end
    if input.downcase == "s"
      start_game
    end
  end

  def start_game
    game = Game.new
  end

  def quit_app
    puts "Bye!"
    exit
  end

end