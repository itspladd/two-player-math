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
end