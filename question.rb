class Question

  attr_reader :result

  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
    @result = num1 + num2
  end

  def print_question
    "What is #{@num1} + #{@num2}? "
  end

  def question_result(player_answer)
    if (result == player_answer)
      "What is #{@num1} + #{@num2}? CORRECT\n"
    else
      "What is #{@num1} + #{@num2}? INCORRECT\n"
    end
  end

end