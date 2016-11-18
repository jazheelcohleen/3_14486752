class QuestionList

  def initialize
    @list_of_questions = []

  end

  def add_to_list
    temp = generate_question

  end

  def print_list(question)

  end

  def generate_question
    num1 = rand(1..9)
    num2 = rand(1..9)

    Question.new(num1, num2)
  end

end