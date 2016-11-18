require_relative 'player.rb'
require_relative 'question.rb'
require_relative 'questionlist.rb'

class Arithmetic_Tutor
  def initialize
    @questions = QuestionList.new
  end

  def list_questions(no_questions, seed, random_one, random_two)
    srand(seed)
    no_questions.times do
      @questions.add_to_list(Question.new(random_one, random_two))
    end
  end

  def print_questions

  end

end