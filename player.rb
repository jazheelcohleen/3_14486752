class Player

  def initialize(name)
    @name = name
  end

  def welcome
    name = gets
    "Welcome to the Arithmetic Tutor, #{@name}!"

  end

  def player_question(question)
    question.print_question
    player_answer = gets

  end



end