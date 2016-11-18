require_relative 'player.rb'
require_relative 'question.rb'
require_relative 'questionlist.rb'

class Arithmetic_Tutor

  attr_reader :questions

  def initialize
    @questions = QuestionList.new
  end

  def list_questions(no_questions, random_one, random_two)
    no_questions.times do
      @questions.add_to_list(Question.new(random_one, random_two))
    end
  end

  def question_results
    @questions.list_of_questions.size.times do |i|
      result += @questions.list_of_questions[i].question_result
      result += "\n"
    end
  end
end