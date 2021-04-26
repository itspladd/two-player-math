class Question
  MAX_NUMBER = 20
  NUM_OPERATION_ROTATIONS = 10
  OPERATIONS = [
    {symbol:'+', text: 'plus'},
    {symbol:'-', text: 'minus'}
  ]

  attr_reader :first_num, :second_num, :operation, :solution

  def initialize
    @first_num = rand(MAX_NUMBER)
    @second_num = rand(MAX_NUMBER)
    @operation = OPERATIONS.rotate(rand(NUM_OPERATION_ROTATIONS))[0]
    @solution = @first_num.send @operation[:symbol], @second_num
  end

  def to_s
    "What is #{first_num} #{operation[:text]} #{second_num}?"
  end

end