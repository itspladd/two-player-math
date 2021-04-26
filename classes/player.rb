class Player
  attr_accessor :score, :lives
  attr_reader :name

  def initialize
    @score = 0
    @lives = 3
    get_name
  end

  def get_name
    print "Adding a new player. Enter a name: "
    @name = gets.chomp
    puts "New player '#{name}' added!"
  end

  def lose_life
    @lives -= 1
    puts "#{name} loses a life. They have #{lives} left!"
  end

  def add_score
    @score += 1
    puts "#{name}'s score is now #{score}!"
  end

  def answer_question
    $stdin.gets.chomp
  end
end