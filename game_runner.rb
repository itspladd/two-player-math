require_relative "classes/game"
require_relative "classes/player"
require_relative "classes/question"

def handle_input(input)
  if input.downcase == "e"
    puts "Bye!"
    exit
  end
  if input.downcase == "s"
    puts "Starting a new game!"
    game = Game.new
  end
end

def run_app
  while true
    puts("[S]tart a new game or [E]xit?")
    input = $stdin.gets.chomp
    handle_input(input)
  end
end

run_app